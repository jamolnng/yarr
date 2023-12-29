#![no_std]
#![no_main]

extern crate yarr;
extern crate yarr_riscv;

use hifive1::hal::prelude::*;
use hifive1::hal::DeviceResources;
use hifive1::pin;

use hifive1::sprintln;
use yarr::{process::Process, processes, scheduler::Scheduler};
use yarr_riscv::{context, entry};

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

    sprintln!("hello, rust");

    unsafe {
        let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
        state |= RED_LED | GREEN_LED | BLUE_LED;
        mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);

        let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN);
        state |= RED_LED | GREEN_LED | BLUE_LED;
        mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN, state);
    }

    let context_switch_time = 32768; // context switch 1000 times per second
    yarr::scheduler::start(Scheduler::RoundRobin, context_switch_time)
}

processes!(
    Process {
        context: context!(),
        stack: &mut [0 as usize; 128],
        exec: || {
            loop {
                unsafe {
                    let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
                    state ^= RED_LED;
                    state ^= GREEN_LED;
                    mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
                }
                for _ in 0..200000 {}
            }
        },
        priority: 100,
        ready: true
    },
    Process {
        context: context!(),
        stack: &mut [0 as usize; 128],
        exec: || {
            loop {
                unsafe {
                    let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
                    state ^= GREEN_LED;
                    mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
                }
                for _ in 0..400000 {}
            }
        },
        priority: 50,
        ready: true
    },
    Process {
        context: context!(),
        stack: &mut [0 as usize; 128],
        exec: || {
            loop {
                unsafe {
                    let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
                    state ^= BLUE_LED;
                    mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
                }
                for _ in 0..200000 {}
            }
        },
        priority: 10,
        ready: true
    }
);

#[inline(never)]
#[panic_handler]
fn panic(info: &core::panic::PanicInfo) -> ! {
    sprintln!("info: {info}", info = info);
    loop {
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
        // unsafe {
        //     riscv::asm::wfi();
        // }
    }
}
