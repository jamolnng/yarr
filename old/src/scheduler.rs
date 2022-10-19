use crate::{
    clock::Clock,
    process::{Process, RealTimeProcess, RoundRobinProcess},
    timer::Timer,
};

pub trait Scheduler<'a, T: Process, C: Clock> {
    fn schedule(&mut self);
    fn idle(&self) -> &'a T;
    fn current(&self) -> &T;
    fn set_timer(&mut self);

    fn start(&mut self) -> ! {
        self.schedule();
        self.set_timer();
        // unsafe {
        //     riscv::register::mie::set_mtimer(); // enable timer interrupts
        //     riscv::register::mstatus::set_mie(); // enable interrupts
        // }
        self.start_first_task()
    }

    fn start_first_task(&mut self) -> ! {
        loop {}
    }

    fn trap_vec() -> ! {
        loop {}
    }
}

pub struct RoundRobin<'a, C: Clock> {
    timer: Timer<C>,
    index: usize,
    idle: &'a RoundRobinProcess<'a>,
    current: &'a RoundRobinProcess<'a>,
    processes: &'a [RoundRobinProcess<'a>],
}

impl<'a, C: Clock> Scheduler<'a, RoundRobinProcess<'a>, C> for RoundRobin<'a, C> {
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

    fn set_timer(&mut self) {
        self.timer.set();
    }
}

impl<'a, C: Clock> RoundRobin<'a, C> {
    pub fn new(
        tick_rate: u64,
        processes: &'a [RoundRobinProcess<'a>],
        idle: &'a RoundRobinProcess<'a>,
    ) -> Self {
        Self {
            timer: Timer::<C>::new(tick_rate),
            index: 0,
            idle,
            current: idle,
            processes,
        }
    }
}

pub struct RealTime<'a, C: Clock> {
    timer: Timer<C>,
    idle: &'a RealTimeProcess<'a>,
    current: &'a RealTimeProcess<'a>,
    processes: &'a [RealTimeProcess<'a>],
}

impl<'a, C: Clock> Scheduler<'a, RealTimeProcess<'a>, C> for RealTime<'a, C> {
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

    fn set_timer(&mut self) {
        self.timer.set();
    }
}

impl<'a, C: Clock> RealTime<'a, C> {
    pub fn new(
        tick_rate: u64,
        processes: &'a [RealTimeProcess<'a>],
        idle: &'a RealTimeProcess<'a>,
    ) -> Self {
        Self {
            timer: Timer::<C>::new(tick_rate),
            idle,
            current: idle,
            processes,
        }
    }
}
