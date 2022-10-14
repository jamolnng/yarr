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
    fn ready(&self) -> bool;
    fn stack(&self) -> &Stack;
}

pub struct RoundRobinProcess<'a> {
    ready: bool,
    #[allow(dead_code)]
    stack: Stack<'a>,
}

impl<'a> Process for RoundRobinProcess<'a> {
    fn ready(&self) -> bool {
        self.ready
    }

    fn stack(&self) -> &Stack {
        &self.stack
    }
}

impl<'a> RoundRobinProcess<'a> {
    pub fn new(exec: fn() -> !, stack: &'a mut [usize]) -> Self {
        let mut stack = Stack::new(stack);
        stack.init(exec);
        Self { ready: true, stack }
    }

    pub fn idle(stack: &'a mut [usize]) -> Self {
        let mut stack = Stack::new(stack);
        stack.init(idle);
        Self { ready: true, stack }
    }
}

pub struct RealTimeProcess<'a> {
    priority: u32,
    ready: bool,
    #[allow(dead_code)]
    stack: Stack<'a>,
}

impl<'a> Process for RealTimeProcess<'a> {
    fn ready(&self) -> bool {
        self.ready
    }

    fn stack(&self) -> &Stack {
        &self.stack
    }
}

impl<'a> RealTimeProcess<'a> {
    pub fn new(exec: fn() -> !, priority: u32, stack: &'a mut [usize]) -> Self {
        let mut stack = Stack::new(stack);
        stack.init(exec);
        Self {
            priority,
            ready: true,
            stack,
        }
    }

    pub fn idle(stack: &'a mut [usize]) -> Self {
        let mut stack = Stack::new(stack);
        stack.init(idle);
        Self {
            priority: 0,
            ready: true,
            stack,
        }
    }

    pub fn priority(&self) -> u32 {
        self.priority
    }
}
