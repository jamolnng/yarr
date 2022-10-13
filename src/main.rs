#![no_std]
#![no_main]

extern crate panic_halt;
extern crate riscv_rt;

use riscv_rt::entry;

pub mod process;
pub mod scheduler;

use crate::scheduler::Scheduler;

#[entry]
fn main() -> ! {
    let mut sched = scheduler::RoundRobin::<10>::new();

    let test = process::RoundRobinProcess::new(|| loop {});
    sched.queue(test);

    sched.start();
}
