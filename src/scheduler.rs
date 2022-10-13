use crate::{
    process::{Process, RealTimeProcess, RoundRobinProcess},
    stack::Stack,
};

pub trait Scheduler<T: Process> {
    fn next(&mut self) -> &T;

    fn swap(&mut self, _proc: T) {}

    fn start(&mut self) -> ! {
        loop {}
    }

    fn idle(&self) -> &T;

    fn queue(&mut self, proc: T) -> bool;
}

pub struct RoundRobin<'a, const N: usize> {
    processes: [Option<RoundRobinProcess<'a>>; N],
    index: usize,
    idle: RoundRobinProcess<'a>,
}

impl<'a, const N: usize> Scheduler<RoundRobinProcess<'a>> for RoundRobin<'a, N> {
    fn next(&mut self) -> &RoundRobinProcess<'a> {
        let next = self
            .processes
            .iter()
            .cycle()
            .skip(self.index)
            .take(N)
            .position(|p| {
                if let Some(p) = p {
                    return p.ready();
                }
                false
            });
        if let Some(next) = next {
            self.index = (self.index + next + 1) % N;
            return self.processes[(self.index + next) % N].as_ref().unwrap();
        } else {
            return self.idle();
        }
    }

    fn idle(&self) -> &RoundRobinProcess<'a> {
        &self.idle
    }

    fn queue(&mut self, proc: RoundRobinProcess<'a>) -> bool {
        if let Some(p) = self.processes.iter_mut().find(|p| p.is_none()) {
            p.replace(proc);
            return true;
        }
        false
    }
}

impl<'a, const N: usize> RoundRobin<'a, N> {
    pub fn new(idle_stack: &'a mut Stack<'a>) -> Self {
        Self {
            processes: [(); N].map(|_| Option::<RoundRobinProcess>::default()),
            idle: RoundRobinProcess::idle(idle_stack),
            index: 0,
        }
    }
}

pub struct RealTime<'a, const N: usize> {
    processes: [Option<RealTimeProcess<'a>>; N],
    idle: RealTimeProcess<'a>,
}

impl<'a, const N: usize> Scheduler<RealTimeProcess<'a>> for RealTime<'a, N> {
    fn next(&mut self) -> &RealTimeProcess<'a> {
        self.processes
            .iter()
            .filter(|p| {
                if let Some(p) = p {
                    return p.ready();
                }
                false
            })
            .max_by_key(|p| p.as_ref().unwrap().priority())
            .map_or(self.idle(), |p| p.as_ref().unwrap())
    }

    fn idle(&self) -> &RealTimeProcess<'a> {
        &self.idle
    }

    fn queue(&mut self, proc: RealTimeProcess<'a>) -> bool {
        if self
            .processes
            .iter()
            .find(|p| {
                if let Some(p) = p {
                    return p.priority() == proc.priority();
                }
                false
            })
            .is_none()
        {
            if let Some(p) = self.processes.iter_mut().find(|p| p.is_none()) {
                p.replace(proc);
                return true;
            } else {
                // no processes left
            }
        } else {
            // cannot have two processes with the same priority
        }
        false
    }
}

impl<'a, const N: usize> RealTime<'a, N> {
    pub fn new(idle_stack: &'a mut Stack<'a>) -> Self {
        Self {
            processes: [(); N].map(|_| Option::<RealTimeProcess>::default()),
            idle: RealTimeProcess::idle(idle_stack),
        }
    }
}
