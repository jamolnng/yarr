#![no_std]
#![no_main]

use hifive1::hal::prelude::*;
use hifive1::{hal::DeviceResources, pin, sprintln};
use process::Process;
use riscv_rt::entry;

mod asm;
mod cpu;
mod process;
mod schedule;
mod trap;
mod pmp;

const GPIO_CTRL_ADDR: usize = 0x10012000;
const GPIO_REG_OUTPUT_VAL: usize = 0x0C / 4;
const GPIO_REG_OUTPUT_EN: usize = 0x08 / 4;
const RED_LED: usize = 0x00400000;
const GREEN_LED: usize = 0x00080000;
const BLUE_LED: usize = 0x00200000;

unsafe fn mmio_write(address: usize, offset: usize, value: usize) {
    let reg = address as *mut usize;
    reg.add(offset).write_volatile(value);
}

unsafe fn mmio_read(address: usize, offset: usize) -> usize {
    let reg = address as *mut usize;
    reg.add(offset).read_volatile()
}

static mut STACK_01: [usize; 256] = [0; 256];
static mut STACK_02: [usize; 256] = [0; 256];
static mut STACK_03: [usize; 256] = [0; 256];

pub static mut PROCESS_LIST: &'static mut [Process] = unsafe { &mut [
    Process::from_sized(10, &mut STACK_01),
    Process::from_sized(20, &mut STACK_02),
    Process::from_sized(30, &mut STACK_03),
]};

#[entry]
fn main() -> ! {
    unsafe {
        riscv::interrupt::disable();
    }
    trap::init();

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

    sprintln!("Hello, World! {}MHz", clocks.measure_coreclk().0 / 1_000_000);

    unsafe {
        let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
        state |= RED_LED | GREEN_LED | BLUE_LED;
        mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
        let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN);
        state |= RED_LED | GREEN_LED | BLUE_LED;
        mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN, state);
    }

    unsafe {
        PROCESS_LIST[0].init(|| loop {
            let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
            state ^= RED_LED;
            mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
            for _ in 0..8000000 {}
            core::arch::asm!("ecall");
            // riscv::asm::wfi();
        });
        PROCESS_LIST[1].init(|| loop {
            let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
            state ^= GREEN_LED;
            mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
            for _ in 0..4000000 {}
            // riscv::asm::wfi();
        });
        PROCESS_LIST[2].init(|| loop {
            let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
            state ^= BLUE_LED;
            mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
            for _ in 0..2000000 {}
            // riscv::asm::wfi();
        });
    }
    // enable U-mode in the entire memory map, for fun
    pmp::init(0, 0x8000_4000, riscv::register::Range::TOR, riscv::register::Permission::RW, false);
    schedule::yarr_set_timer(32);
    trap::switch_task(schedule::schedule())
}

#[inline(never)]
#[panic_handler]
fn panic(info: &core::panic::PanicInfo) -> ! {
    sprintln!("panic: {:#?}", info);
    loop {
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
    }
}
