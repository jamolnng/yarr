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

static TEST_STACK: &'static [usize] = &[0; 128];

#[entry]
fn main() -> ! {
    let mut sched = scheduler::RoundRobin::<10>::new();

    sched.queue(process::RoundRobinProcess::new(
        || loop {
            // TODO
        },
        Stack::new(TEST_STACK),
    ));

    sched.start();
}
