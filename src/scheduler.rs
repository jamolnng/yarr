use crate::process::{Process, RealTimeProcess, RoundRobinProcess};

use core::arch::asm;

pub trait Scheduler<'a, T: Process> {
    fn schedule(&mut self);

    fn start(&mut self) -> ! {
        self.start_first_task()
    }

    fn idle(&self) -> &'a T;

    fn start_first_task(&self) -> ! {
        unsafe {
            asm!(
                "csrw mtvec, {0}",
                in(reg) &Self::trap_vec,
            );

            asm!(
                "lw sp, 0({0})",
                in(reg) self.current().stack().ptr()
            );
        }
        loop {}
    }

    fn current(&self) -> &T;

    fn trap_vec() {}
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
