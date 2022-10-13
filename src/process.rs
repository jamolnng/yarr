use riscv::asm::wfi;

use crate::stack::Stack;

fn idle() -> ! {
    loop {
        unsafe {
            wfi();
        }
    }
}

pub trait Process {
    fn exec(&self) -> !;
    fn ready(&self) -> bool;
}

pub struct RoundRobinProcess<'a> {
    exec: fn() -> !,
    ready: bool,
    #[allow(dead_code)]
    stack: Stack<'a>,
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
    pub fn new(exec: fn() -> !, stack: &'a mut [usize]) -> Self {
        Self {
            exec,
            ready: true,
            stack: Stack::new(stack),
        }
    }

    pub fn idle(stack: &'a mut [usize]) -> Self {
        Self {
            exec: idle,
            ready: true,
            stack: Stack::new(stack),
        }
    }
}

pub struct RealTimeProcess<'a> {
    exec: fn() -> !,
    priority: u32,
    ready: bool,
    #[allow(dead_code)]
    stack: Stack<'a>,
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
    pub fn new(exec: fn() -> !, priority: u32, stack: &'a mut [usize]) -> Self {
        Self {
            exec,
            priority,
            ready: true,
            stack: Stack::new(stack),
        }
    }

    pub fn idle(stack: &'a mut [usize]) -> Self {
        Self {
            exec: idle,
            priority: 0,
            ready: true,
            stack: Stack::new(stack),
        }
    }

    pub fn priority(&self) -> u32 {
        self.priority
    }
}
