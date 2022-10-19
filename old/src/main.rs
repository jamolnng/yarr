#![no_std]
#![no_main]

pub mod asm;
pub mod clock;
pub mod init;
pub mod process;
pub mod scheduler;
pub mod stack;
pub mod timer;

use scheduler::Scheduler;

const CLINT_REG_MTIMECMP: usize = 0x4000;
const CLINT_CTRL_ADDR: usize = 0x02000000;
const CLINT_REG_MTIME: usize = 0xBFF8;

const GPIO_CTRL_ADDR: usize = 0x10012000;
const GPIO_REG_OUTPUT_VAL: usize = 0x0C;

const GREEN_LED: usize = 0x00080000;
// const BLUE_LED: usize = 0x00200000;
const RED_LED: usize = 0x00400000;

unsafe fn mmio_write(address: usize, offset: usize, value: usize) {
    let reg = address as *mut usize;
    reg.add(offset).write_volatile(value);
}

unsafe fn mmio_read(address: usize, offset: usize) -> usize {
    let reg = address as *mut usize;
    reg.add(offset).read_volatile()
}

struct HiFiveRTC;

impl clock::Clock for HiFiveRTC {
    fn freq() -> u64 {
        32768
    }

    fn ticks() -> u64 {
        unsafe {
            let lo = mmio_read(CLINT_CTRL_ADDR, CLINT_REG_MTIME);
            let hi = mmio_read(CLINT_CTRL_ADDR, CLINT_REG_MTIME + 4);
            ((hi as u64) << 32) | lo as u64
        }
    }

    fn set_cmp(next: u64) {
        unsafe {
            mmio_write(CLINT_CTRL_ADDR, CLINT_REG_MTIMECMP, (next) as usize);
            mmio_write(
                CLINT_CTRL_ADDR,
                CLINT_REG_MTIMECMP + 4,
                (next >> 32) as usize,
            );
        }
    }
}

#[link_section = ".init.rust"]
#[no_mangle]
extern "C" fn _start_rust() -> ! {
    start_rust()
}

fn start_rust() -> ! {
    init::init_data();
    init::zero_bss();
    main()
}

fn main() -> ! {
    let mut idle_data = [0; 64];
    let mut test_data = [0; 128];
    let mut test_data2 = [0; 256];

    let idle = process::RoundRobinProcess::idle(&mut idle_data);
    let mut processes = [
        process::RoundRobinProcess::new(
            || loop {
                unsafe {
                    let mut gpio = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
                    gpio ^= RED_LED;
                    mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, gpio)
                }
                for _ in 0..250_000 {}
            },
            &mut test_data,
        ),
        process::RoundRobinProcess::new(
            || loop {
                unsafe {
                    let mut gpio = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
                    gpio ^= GREEN_LED;
                    mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, gpio)
                }
                for _ in 0..1_000_000 {}
            },
            &mut test_data2,
        ),
    ];

    let mut sched = scheduler::RoundRobin::<HiFiveRTC>::new(1000, &mut processes, &idle);
    sched.start();
}

#[no_mangle]
extern "C" fn eh_personality() {}

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    loop {
        // core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
        unsafe {
            core::arch::asm!("wfi");
        }
    }
}
