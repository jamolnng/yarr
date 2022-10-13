#![no_std]
#![no_main]

extern crate panic_halt;
extern crate riscv_rt;

use riscv_rt::entry;

pub mod process;
pub mod scheduler;
pub mod stack;

use scheduler::Scheduler;

#[entry]
fn main() -> ! {
    let mut idle_data = [0; 64];
    let mut test_data = [0; 128];
    let mut test_data2 = [0; 256];

    let mut sched = scheduler::RoundRobin::<10>::new(&mut idle_data);
    sched.queue(process::RoundRobinProcess::new(
        || loop {
            // TODO
        },
        &mut test_data,
    ));
    sched.queue(process::RoundRobinProcess::new(
        || loop {
            // TODO
        },
        &mut test_data2,
    ));
    sched.start();
}
