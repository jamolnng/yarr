use yarr_common::process::Sleep;
use yarr_common::process::State;

use crate::cpu::TrapFrame;

#[repr(C)]
#[derive(Debug)]
pub struct Process {
    frame: TrapFrame,
    stack: usize,
    pid: usize,
    state: State,
}

impl Process {
    pub const fn new() -> Self {
        Self {
            frame: TrapFrame::new(),
            stack: 0,
            pid: 0,
            state: State::Running,
        }
    }

    pub fn init(&mut self, pid: usize, stack: usize, stack_len: usize, pc: usize) {
        self.frame.init(stack + stack_len, pc);
        self.pid = pid;
        self.stack = stack;
    }

    pub fn state(&self) -> &State {
        &self.state
    }

    pub fn pid(&self) -> usize {
        self.pid
    }

    pub fn frame(&mut self) -> &mut TrapFrame {
        &mut self.frame
    }

    pub fn sleep_for(&mut self, duration: u64) {
        self.set_state(State::Sleeping(Sleep::Until(duration)));
    }

    pub fn sleep_ticks(&mut self, ticks: u64) {
        self.set_state(State::Sleeping(Sleep::Ticks(ticks)));
    }

    pub fn set_state(&mut self, state: State) {
        self.state = state;
    }
}
