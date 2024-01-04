#![no_std]
#![no_main]

use hifive1::hal::prelude::*;
use hifive1::{hal::DeviceResources, pin, sprintln};
use riscv_rt::entry;
use yarr::process::Process;
use yarr::schedule::SimpleRoundRobin;

static mut PROCESSES: [Process; 4] = [
    Process::new(),
    Process::new(),
    Process::new(),
    Process::new(), // idle
];
static mut PIDS: [usize; 3] = [10, 20, 30];
static mut PCS: [*const (); 3] = [
    blink1 as *const (),
    blink2 as *const (),
    blink3 as *const (),
];
static mut SCHEDULER: SimpleRoundRobin = SimpleRoundRobin::new(unsafe { &mut PROCESSES });
static mut STACKS: [[usize; 256]; 3] = [[0; 256], [0; 256], [0; 256]];
static mut IDLE_STACK: [usize; 8] = [0; 8];

#[entry]
fn main() -> ! {
    bsp_init();
    unsafe {
        for i in 0..PROCESSES.len() - 1 {
            PROCESSES[i].init(
                PIDS[i],
                STACKS[i].as_mut_ptr() as usize,
                core::mem::size_of_val(&STACKS[i]),
                PCS[i] as usize,
            );
        }
        PROCESSES.last_mut().unwrap().init(
            usize::MAX,
            IDLE_STACK.as_mut_ptr() as usize,
            core::mem::size_of_val(&IDLE_STACK),
            idle_task as *const () as usize,
        )
    }

    unsafe { yarr::init(&mut SCHEDULER, None, 32) };

    yarr::start()
}

fn blink1() -> ! {
    loop {
        unsafe {
            yarr::syscall::syscall_sleep_for(32768 * 2);
            let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
            state ^= RED_LED;
            mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
        }
    }
}

fn blink2() -> ! {
    loop {
        unsafe {
            yarr::syscall::syscall_sleep_for(32768);
            let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
            state ^= GREEN_LED;
            mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
        }
    }
}

fn blink3() -> ! {
    loop {
        unsafe {
            yarr::syscall::syscall_sleep_for(32768 / 2);
            let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
            state ^= BLUE_LED;
            mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
        }
    }
}

fn idle_task() -> ! {
    loop {
        // sprintln!("idle");
        yarr::syscall::syscall_yield();
    }
}

fn bsp_init() {
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
}

#[inline(never)]
#[panic_handler]
fn panic(info: &core::panic::PanicInfo) -> ! {
    sprintln!("{}", info);
    loop {
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
    }
}

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
