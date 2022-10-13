use crate::process::{Process, RealTimeProcess, RoundRobinProcess};

pub trait Scheduler<T: Process> {
    fn next(&mut self) -> &T;

    fn swap(&mut self, _proc: T) {}

    fn start(&mut self) -> ! {
        loop {}
    }

    fn idle(&self) -> &T;
}

pub struct RoundRobin<const N: usize> {
    processes: [Option<RoundRobinProcess>; N],
    idle: RoundRobinProcess,
    index: usize,
}

impl<const N: usize> Scheduler<RoundRobinProcess> for RoundRobin<N> {
    fn next(&mut self) -> &RoundRobinProcess {
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

    fn idle(&self) -> &RoundRobinProcess {
        &self.idle
    }
}

impl<const N: usize> RoundRobin<N> {
    pub fn new() -> Self {
        Self {
            processes: [(); N].map(|_| Option::<RoundRobinProcess>::default()),
            idle: RoundRobinProcess::idle(),
            index: 0,
        }
    }

    pub fn queue(&mut self, proc: RoundRobinProcess) {
        if let Some(p) = self.processes.iter_mut().find(|p| p.is_none()) {
            p.replace(proc);
        }
    }
}

pub struct RealTime<const N: usize> {
    processes: [Option<RealTimeProcess>; N],
    idle: RealTimeProcess,
}

impl<const N: usize> Scheduler<RealTimeProcess> for RealTime<N> {
    fn next(&mut self) -> &RealTimeProcess {
        let next = self
            .processes
            .iter()
            .filter(|p| {
                if let Some(p) = p {
                    return p.ready();
                }
                false
            })
            .max_by_key(|p| p.as_ref().unwrap().priority());
        if let Some(next) = next {
            return next.as_ref().unwrap();
        }
        self.idle()
    }

    fn idle(&self) -> &RealTimeProcess {
        &self.idle
    }
}

impl<const N: usize> RealTime<N> {
    pub fn new() -> Self {
        Self {
            processes: [(); N].map(|_| Option::<RealTimeProcess>::default()),
            idle: RealTimeProcess::idle(),
        }
    }

    pub fn queue(&mut self, proc: RealTimeProcess) {
        if let Some(p) = self.processes.iter_mut().find(|p| p.is_none()) {
            p.replace(proc);
        }
    }
}
