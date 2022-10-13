#![no_std]
#![no_main]

extern crate panic_halt;
extern crate riscv_rt;

use riscv_rt::entry;

pub mod process;
pub mod scheduler;
pub mod stack;

use scheduler::Scheduler;
use stack::Stack;

#[entry]
fn main() -> ! {
    let test_stack = [0 as usize; 128];

    let mut sched = scheduler::RoundRobin::<10>::new();
    sched.queue(process::RoundRobinProcess::new(
        || loop {
            // TODO
        },
        Stack::new(&test_stack),
    ));
    sched.start();
}
