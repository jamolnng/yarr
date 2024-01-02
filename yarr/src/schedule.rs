use yarr_common::process::{Sleep, State};

use crate::{internal, process::Process};

pub trait Scheduler {
    fn schedule(&mut self) -> *mut Process;
    fn tick(&mut self);
}

#[derive(Debug)]
pub struct SimpleRoundRobin {
    processes: *mut [Process],
    idx: usize,
}

#[allow(dead_code)]
impl SimpleRoundRobin {
    pub const fn new(processes: *mut [Process]) -> Self {
        Self { processes, idx: 0 }
    }
}

impl Scheduler for SimpleRoundRobin {
    fn schedule(&mut self) -> *mut Process {
        unsafe {
            // check sleep duration
            (*self.processes).iter_mut().for_each(|p| {
                if let State::Sleeping(Sleep::Until(duration)) = p.state() {
                    let now = internal::time::machine_time();
                    if *duration >= now {
                        p.set_state(State::Running);
                    }
                }
            });

            // schedule next
            self.idx += 1;
            if self.idx >= (*self.processes).len() {
                self.idx = 0
            }
            (*self.processes)
                .iter_mut()
                .skip(self.idx)
                .find(|p| *p.state() == State::Running)
                .unwrap()
        }
    }

    fn tick(&mut self) {
        unsafe {
            (*self.processes).iter_mut().for_each(|p| {
                if let State::Sleeping(Sleep::Ticks(ticks)) = p.state() {
                    if ticks - 1 == 0 {
                        p.set_state(State::Running);
                    } else {
                        p.sleep_ticks(ticks - 1);
                    }
                }
            });
        }
    }
}

#[derive(Debug)]
pub struct SimpleRealTime {
    processes: *mut [Process],
}

#[allow(dead_code)]
impl SimpleRealTime {
    pub const fn new(processes: *mut [Process]) -> Self {
        Self { processes }
    }

    fn idle() -> ! {
        loop {
            crate::internal::yarr_wfi();
        }
    }
}

impl Scheduler for SimpleRealTime {
    fn schedule(&mut self) -> *mut Process {
        unsafe {
            // check sleep duration
            (*self.processes).iter_mut().for_each(|p| {
                if let State::Sleeping(Sleep::Until(duration)) = p.state() {
                    let now = internal::time::machine_time();
                    if *duration >= now {
                        p.set_state(State::Running);
                    }
                }
            });

            // schedule next
            (*self.processes)
                .iter_mut()
                .filter(|p| *p.state() == State::Running)
                .min_by_key(|p| p.pid())
                .unwrap()
        }
    }

    fn tick(&mut self) {
        unsafe {
            (*self.processes).iter_mut().for_each(|p| {
                if let State::Sleeping(Sleep::Ticks(ticks)) = p.state() {
                    if ticks - 1 == 0 {
                        p.set_state(State::Running);
                    } else {
                        p.sleep_ticks(ticks - 1);
                    }
                }
            });
        }
    }
}

static mut SCHEDULER: Option<*mut dyn Scheduler> = None;

pub fn init(scheduler: *mut dyn Scheduler) {
    unsafe {
        SCHEDULER = Some(scheduler);
    }
}

#[no_mangle]
fn yarr_schedule() -> *mut Process {
    unsafe { (*SCHEDULER.unwrap()).schedule() }
}

#[no_mangle]
fn yarr_tick() {
    unsafe {
        (*SCHEDULER.unwrap()).tick();
    }
}
