#![no_std]
#![no_main]

use hifive1::hal::prelude::*;
use hifive1::{hal::DeviceResources, pin, sprintln};
use process::{Process, StaticStack};
use riscv_rt::entry;
use schedule::RoundRobin;

mod asm;
mod cpu;
mod pmp;
mod process;
mod schedule;
mod trap;

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

static mut STACK_01: StaticStack<1024> = StaticStack::new();
static mut STACK_02: StaticStack<1024> = StaticStack::new();
static mut STACK_03: StaticStack<1024> = StaticStack::new();

pub static mut PROCESS_LIST: &'static mut [Option<Process>] = &mut [None, None, None];

pub static mut SCHEDULER: RoundRobin = RoundRobin::new();

#[entry]
fn main() -> ! {
    {
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

        sprintln!(
            "Hello, World! {}MHz",
            clocks.measure_coreclk().0 / 1_000_000
        );

        unsafe {
            let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
            state |= RED_LED | GREEN_LED | BLUE_LED;
            mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
            let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN);
            state |= RED_LED | GREEN_LED | BLUE_LED;
            mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN, state);
        }

        unsafe {
            PROCESS_LIST[0] = Some(Process::new(10, &mut STACK_01, || loop {
                let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
                state ^= RED_LED;
                mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
                for _ in 0..100000000 {
                    core::arch::asm!("nop");
                }
                // core::arch::asm!("ecall");
                // riscv::asm::wfi();
            }));
            PROCESS_LIST[1] = Some(Process::new(20, &mut STACK_02, || loop {
                let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
                state ^= GREEN_LED;
                mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
                for _ in 0..50000000 {
                    core::arch::asm!("nop");
                }
                // riscv::asm::wfi();
            }));
            PROCESS_LIST[2] = Some(Process::new(30, &mut STACK_03, || loop {
                let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
                state ^= BLUE_LED;
                mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
                for _ in 0..25000000 {
                    core::arch::asm!("nop");
                }
                // riscv::asm::wfi();
            }));

            schedule::set_scheduler(&mut SCHEDULER);
        }
        // configure default PMP for FE310-G002
        // 0x0000_0000 - 0x0200_0000: on chip non-volatile memory
        // 0x0200_0000 - 0x0800_0000: clint
        // 0x0800_0000 - 0x0800_2000: itim
        // 0x0800_2000 - 0x8000_0000: on chip peripherals
        // 0x8000_0000 - 0x8000_4000: on chip volatile memory (ram)
        pmp::clear();
        pmp::lock(0, 0x0200_0000, pmp::Range::TOR, pmp::Permission::RWX, false).unwrap();
        pmp::lock(1, 0x0800_0000, pmp::Range::TOR, pmp::Permission::RW, false).unwrap();
        pmp::lock(2, 0x0800_2000, pmp::Range::TOR, pmp::Permission::RX, false).unwrap();
        pmp::lock(3, 0x2000_0000, pmp::Range::TOR, pmp::Permission::RW, false).unwrap();
        pmp::lock(4, 0x8000_0000, pmp::Range::TOR, pmp::Permission::RX, false).unwrap();
        pmp::lock(5, 0x8000_4000, pmp::Range::TOR, pmp::Permission::RW, false).unwrap();
    }
    schedule::set_timer(32);
    schedule::schedule_and_switch()
}

#[inline(never)]
#[panic_handler]
fn panic(info: &core::panic::PanicInfo) -> ! {
    sprintln!("panic: {:#?}", info);
    loop {
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
    }
}
