use riscv::asm::wfi;

use crate::stack::Stack;

static IDLE_STACK: &'static [usize] = &[0; 64];

pub trait Process {
    fn exec(&self) -> !;
    fn ready(&self) -> bool;
}

pub struct RoundRobinProcess {
    exec: fn() -> !,
    ready: bool,
    _stack: Stack,
}

impl Process for RoundRobinProcess {
    fn exec(&self) -> ! {
        (self.exec)()
    }

    fn ready(&self) -> bool {
        self.ready
    }
}

impl RoundRobinProcess {
    pub fn new(exec: fn() -> !, _stack: Stack) -> Self {
        Self {
            exec,
            ready: true,
            _stack,
        }
    }

    pub fn idle() -> Self {
        Self {
            exec: || loop {
                unsafe {
                    wfi();
                }
            },
            ready: true,
            _stack: Stack::new(IDLE_STACK),
        }
    }
}

pub struct RealTimeProcess {
    exec: fn() -> !,
    priority: u32,
    ready: bool,
    _stack: Stack,
}

impl Process for RealTimeProcess {
    fn exec(&self) -> ! {
        (self.exec)()
    }

    fn ready(&self) -> bool {
        self.ready
    }
}

impl RealTimeProcess {
    pub fn new(exec: fn() -> !, priority: u32, _stack: Stack) -> Self {
        Self {
            exec,
            priority,
            ready: true,
            _stack,
        }
    }

    pub fn idle() -> Self {
        Self {
            exec: || loop {
                unsafe {
                    wfi();
                }
            },
            ready: true,
            priority: 0,
            _stack: Stack::new(IDLE_STACK),
        }
    }

    pub fn priority(&self) -> u32 {
        self.priority
    }
}
