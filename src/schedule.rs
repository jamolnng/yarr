use crate::{
    process::{Process, State},
    PROCESS_LIST,
};

#[allow(unused_variables)]
#[allow(dead_code)]

const MMIO_MTIMECMP: *mut u64 = 0x0200_4000usize as *mut u64;

#[allow(unused_variables)]
#[allow(dead_code)]
const MMIO_MTIME: *const u64 = 0x0200_BFF8 as *const u64;

#[no_mangle]
#[allow(unused_variables)]
#[allow(dead_code)]
#[allow(unused_unsafe)]
pub fn yarr_set_timer(switch_time: u64) {
    unsafe {
        MMIO_MTIMECMP.write_volatile(MMIO_MTIME.read_volatile().wrapping_add(switch_time));
    }
}

pub trait Scheduler {
    fn schedule(&mut self) -> *mut Process;
}

#[derive(Debug)]
pub struct RoundRobin {
    current: usize,
}

impl RoundRobin {
    pub const fn new() -> Self {
        Self {
            current: 0
        }
    }
}

#[derive(Debug)]
pub struct RealTime;

impl Scheduler for RoundRobin {
    fn schedule(&mut self) -> *mut Process {
        unsafe {
            self.current += 1;
            if self.current >= PROCESS_LIST.len() {
                self.current = 0;
            }
            PROCESS_LIST
                .iter_mut()
                .skip(self.current)
                .flatten()
                .next()
                .unwrap()
        }
    }
}

impl Scheduler for RealTime {
    fn schedule(&mut self) -> *mut Process {
        unsafe {
            PROCESS_LIST
                .iter_mut()
                .flatten()
                .filter(|p| *p.state() == State::Running)
                .max_by_key(|p| p.pid())
                .unwrap()
        }
    }
}

extern "Rust" {
    pub static mut SCHEDULER: Option<&'static mut dyn Scheduler>;
}