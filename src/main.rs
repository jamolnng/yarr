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
    let mut idle_stack_data = [0 as usize; 64];
    let mut idle_stack = Stack::new(&mut idle_stack_data);

    let mut test_stack_data = [0 as usize; 128];
    let mut test_stack = Stack::new(&mut test_stack_data);

    let mut sched = scheduler::RoundRobin::<10>::new(&mut idle_stack);
    sched.queue(process::RoundRobinProcess::new(
        || loop {
            // TODO
        },
        &mut test_stack,
    ));
    sched.start();
}
