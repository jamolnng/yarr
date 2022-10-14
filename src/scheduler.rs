use crate::process::{Process, RealTimeProcess, RoundRobinProcess};

use core::arch::asm;

pub trait Scheduler<'a, T: Process> {
    fn schedule(&mut self);

    fn start(&mut self) -> ! {
        self.schedule();
        // TODO: set timer
        // TODO: enable timer interrupts
        // TODO: enable interrupts
        self.start_first_task()
    }

    fn idle(&self) -> &'a T;

    fn start_first_task(&mut self) -> ! {
        unsafe {
            asm!(
                "csrw mtvec, {0}",
                in(reg) &Self::trap_vec,
            );

            asm!(
                "lw sp, 0({0})",
                in(reg) self.current().stack().ptr()
            );

            #[cfg(target_arch = "riscv32")]
            {
                asm!(concat!("lw x1, 29*", 4, "(sp)")); // # load return address
                asm!(
                    concat!("lw {0}, 28*", 4, "(sp)"),
                    concat!("csrw mstatus, {0}"),
                    lateout(reg) _,
                ); // load mstatus

                asm!(
                    concat!("lw  x5,  1 * ", 4, "(sp)"), // t0
                    concat!("lw  x6,  2 * ", 4, "(sp)"), // t1
                    concat!("lw  x7,  3 * ", 4, "(sp)"), // t2
                    concat!("lw  x8,  4 * ", 4, "(sp)"), // s0/fp
                    concat!("lw  x9,  5 * ", 4, "(sp)"), // s1
                    concat!("lw x10,  6 * ", 4, "(sp)"), // a0
                    concat!("lw x11,  7 * ", 4, "(sp)"), // a1
                    concat!("lw x12,  8 * ", 4, "(sp)"), // a2
                    concat!("lw x13,  9 * ", 4, "(sp)"), // a3
                    concat!("lw x14, 10 * ", 4, "(sp)"), // a4
                    concat!("lw x15, 11 * ", 4, "(sp)"), // a5
                    concat!("lw x16, 12 * ", 4, "(sp)"), // a6
                    concat!("lw x17, 13 * ", 4, "(sp)"), // a7
                    concat!("lw x18, 14 * ", 4, "(sp)"), // s2
                    concat!("lw x19, 15 * ", 4, "(sp)"), // s3
                    concat!("lw x20, 16 * ", 4, "(sp)"), // s4
                    concat!("lw x21, 17 * ", 4, "(sp)"), // s5
                    concat!("lw x22, 18 * ", 4, "(sp)"), // s6
                    concat!("lw x23, 19 * ", 4, "(sp)"), // s7
                    concat!("lw x24, 20 * ", 4, "(sp)"), // s8
                    concat!("lw x25, 21 * ", 4, "(sp)"), // s9
                    concat!("lw x26, 22 * ", 4, "(sp)"), // s10
                    concat!("lw x27, 23 * ", 4, "(sp)"), // s11
                    concat!("lw x28, 24 * ", 4, "(sp)"), // t3
                    concat!("lw x29, 25 * ", 4, "(sp)"), // t4
                    concat!("lw x30, 26 * ", 4, "(sp)"), // t5
                    concat!("lw x31, 27 * ", 4, "(sp)"), // t6
                ); // load registers

                asm!(concat!("addi sp, sp, ", 120 /* 30 * 4 */)); // reset the stack

                asm!("ret");
            }
        }
        unreachable!()
    }

    fn current(&self) -> &T;

    fn trap_vec() -> ! {
        loop {}
    }
}

pub struct RoundRobin<'a> {
    index: usize,
    idle: &'a RoundRobinProcess<'a>,
    current: &'a RoundRobinProcess<'a>,
    processes: &'a [RoundRobinProcess<'a>],
}

impl<'a> Scheduler<'a, RoundRobinProcess<'a>> for RoundRobin<'a> {
    fn schedule(&mut self) {
        if let Some(next) = self
            .processes
            .iter()
            .cycle()
            .skip(self.index)
            .take(self.processes.len())
            .position(|p| p.ready())
        {
            self.index = (self.index + next + 1) % self.processes.len();
            self.current = &self.processes[(self.index + next) % self.processes.len()];
        } else {
            self.current = self.idle();
        }
    }

    fn idle(&self) -> &'a RoundRobinProcess<'a> {
        &self.idle
    }

    fn current(&self) -> &RoundRobinProcess<'a> {
        self.current
    }
}

impl<'a> RoundRobin<'a> {
    pub fn new(processes: &'a [RoundRobinProcess<'a>], idle: &'a RoundRobinProcess<'a>) -> Self {
        Self {
            index: 0,
            idle,
            current: idle,
            processes,
        }
    }
}

pub struct RealTime<'a> {
    idle: &'a RealTimeProcess<'a>,
    current: &'a RealTimeProcess<'a>,
    processes: &'a [RealTimeProcess<'a>],
}

impl<'a> Scheduler<'a, RealTimeProcess<'a>> for RealTime<'a> {
    fn schedule(&mut self) {
        self.current = self
            .processes
            .iter()
            .filter(|p| p.ready())
            .max_by_key(|p| p.priority())
            .unwrap_or(self.idle());
    }

    fn idle(&self) -> &'a RealTimeProcess<'a> {
        &self.idle
    }

    fn current(&self) -> &RealTimeProcess<'a> {
        self.current
    }
}

impl<'a> RealTime<'a> {
    pub fn new(processes: &'a [RealTimeProcess<'a>], idle: &'a RealTimeProcess<'a>) -> Self {
        Self {
            idle,
            current: idle,
            processes,
        }
    }
}
