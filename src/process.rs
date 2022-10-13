use riscv::asm::wfi;

use crate::stack::Stack;

pub trait Process {
    fn exec(&self) -> !;
    fn ready(&self) -> bool;
}

pub struct RoundRobinProcess<'a> {
    exec: fn() -> !,
    ready: bool,
    _stack: Stack<'a>,
}

impl<'a> Process for RoundRobinProcess<'a> {
    fn exec(&self) -> ! {
        (self.exec)()
    }

    fn ready(&self) -> bool {
        self.ready
    }
}

impl<'a> RoundRobinProcess<'a> {
    pub fn new(exec: fn() -> !, _stack: Stack<'a>) -> Self {
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
            _stack: Stack::new(&[0 as usize; 64]),
        }
    }
}

pub struct RealTimeProcess<'a> {
    exec: fn() -> !,
    priority: u32,
    ready: bool,
    _stack: Stack<'a>,
}

impl<'a> Process for RealTimeProcess<'a> {
    fn exec(&self) -> ! {
        (self.exec)()
    }

    fn ready(&self) -> bool {
        self.ready
    }
}

impl<'a> RealTimeProcess<'a> {
    pub fn new(exec: fn() -> !, priority: u32, _stack: Stack<'a>) -> Self {
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
            _stack: Stack::new(&[0 as usize; 64]),
        }
    }

    pub fn priority(&self) -> u32 {
        self.priority
    }
}
