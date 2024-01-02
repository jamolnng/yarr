#![no_std]
#![no_main]

use arrayvec::ArrayString;
use hifive1::hal::prelude::*;
use hifive1::sprint;
use hifive1::{hal::DeviceResources, pin, sprintln};
use riscv_rt::entry;
use spin_lock::Mutex;
use yarr::process::Process;
use yarr::schedule::SimpleRoundRobin;

const GPIO_CTRL_ADDR: usize = 0x10012000;
const GPIO_REG_OUTPUT_VAL: usize = 0x0C;
const GPIO_REG_OUTPUT_EN: usize = 0x08;
const RED_LED: usize = 0x00400000;
const GREEN_LED: usize = 0x00080000;
const BLUE_LED: usize = 0x00200000;

unsafe fn mmio_write(address: usize, offset: usize, value: usize) {
    let reg = (address + offset) as *mut usize;
    reg.write_volatile(value);
}

unsafe fn mmio_read(address: usize, offset: usize) -> usize {
    let reg = (address + offset) as *mut usize;
    reg.read_volatile()
}

static mut PROCESSES: [Process; 3] = [Process::new(), Process::new(), Process::new()];
static mut FPS: [fn() -> !; 3] = [blink1, blink2, blink3];
static mut WRITE_LOCK: Mutex<()> = Mutex::new(());
static mut SCHEDULER: SimpleRoundRobin = SimpleRoundRobin::new(unsafe { &mut PROCESSES });
static mut STACKS: [[u8; 512]; 3] = [[0; 512], [0; 512], [0; 512]];

fn blink1() -> ! {
    unsafe {
        let mut buf = ArrayString::<32>::new();
        let mut count = 0;
        loop {
            let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
            state ^= RED_LED;
            mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
            for _ in 0..1000000 {
                core::arch::asm!("nop");
            }
            match writeln!(&mut buf, "1: {count}") {
                Ok(_) => {
                    let write = WRITE_LOCK.lock();
                    for c in buf.as_bytes() {
                        yarr::syscall::syscall_putc(*c as char);
                    }
                    drop(write);
                    buf.clear();
                    count += 1;
                }
                Err(_) => {
                    panic!("failed to write to buf")
                }
            }
        }
    }
}

fn blink2() -> ! {
    unsafe {
        let mut buf = ArrayString::<32>::new();
        let mut count = 0;
        loop {
            let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
            state ^= GREEN_LED;
            mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
            for _ in 0..500000 {
                core::arch::asm!("nop");
            }
            match writeln!(&mut buf, "      2: {count}") {
                Ok(_) => {
                    let write = WRITE_LOCK.lock();
                    for c in buf.as_bytes() {
                        yarr::syscall::syscall_putc(*c as char);
                    }
                    drop(write);
                    buf.clear();
                    count += 1;
                }
                Err(_) => {
                    panic!("failed to write to buf")
                }
            }
        }
    }
}

fn blink3() -> ! {
    unsafe {
        let mut buf = ArrayString::<32>::new();
        let mut count = 0;
        loop {
            let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
            state ^= BLUE_LED;
            mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
            for _ in 0..250000 {
                core::arch::asm!("nop");
            }
            match writeln!(&mut buf, "            3: {count}") {
                Ok(_) => {
                    let write = WRITE_LOCK.lock();
                    for c in buf.as_bytes() {
                        yarr::syscall::syscall_putc(*c as char);
                    }
                    drop(write);
                    buf.clear();
                    count += 1;
                }
                Err(_) => {
                    panic!("failed to write to buf")
                }
            }
        }
    }
}

#[entry]
fn main() -> ! {
    let dr = DeviceResources::take().unwrap();
    let p = dr.peripherals;
    let pins = dr.pins;

    // Configure clocks
    let clock_freq = 320.mhz().into();
    let clocks = hifive1::clock::configure(p.PRCI, p.AONCLK, clock_freq);

    // Configure UART for stdout
    hifive1::stdout::configure(
        p.UART0,
        pin!(pins, uart0_tx),
        pin!(pins, uart0_rx),
        115_200.bps(),
        clocks,
    );

    sprintln!(
        "Hello, World! {}MHz",
        clocks.measure_coreclk().0 / 1_000_000,
    );

    unsafe {
        mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, 0xFFFF_FFFF);
        let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN);
        state |= RED_LED | GREEN_LED | BLUE_LED;
        mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN, state);
    }

    unsafe {
        for (i, p) in PROCESSES.iter_mut().enumerate() {
            p.init(
                i * 10,
                STACKS[i].as_mut_ptr() as usize,
                STACKS[i].len(),
                FPS[i] as *const () as usize,
            );
        }
    }

    unsafe { yarr::init(&mut SCHEDULER, Some(syscall), 32) };

    yarr::start()
}

fn syscall(id: usize, frame: *mut yarr::cpu::TrapFrame) {
    let regs = unsafe { &mut (*frame).registers() };
    match id {
        1 => {
            sprint!("{}", regs.get(yarr::cpu::Register::A0) as u8 as char);
        }
        _ => {
            sprintln!("unknown syscall {}", id);
        }
    }
}

#[inline(never)]
#[panic_handler]
fn panic(info: &core::panic::PanicInfo) -> ! {
    sprintln!("{}", info);
    loop {
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
    }
}

pub mod spin_lock {

    use core::cell::UnsafeCell;
    use core::ops::{Deref, DerefMut, Drop};
    use core::sync::atomic::{AtomicBool, Ordering};

    #[derive(Debug)]
    pub struct Mutex<T> {
        lock: AtomicBool,
        inner: UnsafeCell<T>,
    }

    #[derive(Debug)]
    pub struct MutexGuard<'a, T>
    where
        T: 'a,
    {
        mutex: &'a Mutex<T>,
    }

    #[derive(Debug)]
    pub struct MutexErr<'a>(&'a str);

    impl<T> Mutex<T> {
        pub const fn new(value: T) -> Mutex<T> {
            Mutex {
                lock: AtomicBool::new(false),
                inner: UnsafeCell::new(value),
            }
        }

        pub fn try_lock(&self) -> Result<MutexGuard<T>, MutexErr> {
            if !self.lock.swap(true, Ordering::Acquire) {
                Ok(MutexGuard { mutex: self })
            } else {
                Err(MutexErr("lock error"))
            }
        }

        pub fn lock(&self) -> MutexGuard<T> {
            loop {
                if let Ok(mutex_guard) = self.try_lock() {
                    return mutex_guard;
                }
            }
        }
    }

    impl<T> Drop for Mutex<T> {
        fn drop(&mut self) {
            unsafe {
                self.inner.get().drop_in_place();
            }
        }
    }

    unsafe impl<T> Send for Mutex<T> {}
    unsafe impl<T> Sync for Mutex<T> {}

    impl<T> Drop for MutexGuard<'_, T> {
        fn drop(&mut self) {
            let _a = self.mutex.lock.swap(false, Ordering::Release);
        }
    }

    impl<T> Deref for MutexGuard<'_, T> {
        type Target = T;
        fn deref(&self) -> &Self::Target {
            unsafe { &*self.mutex.inner.get() }
        }
    }

    impl<T> DerefMut for MutexGuard<'_, T> {
        fn deref_mut(&mut self) -> &mut Self::Target {
            unsafe { &mut *self.mutex.inner.get() }
        }
    }
}
