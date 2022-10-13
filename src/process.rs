use riscv::asm::wfi;
pub trait Process {
    fn exec(&self) -> !;
    fn ready(&self) -> bool;
}

pub struct RoundRobinProcess {
    exec: fn() -> !,
    ready: bool,
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
    pub fn new(exec: fn() -> !) -> Self {
        Self { exec, ready: true }
    }

    pub fn idle() -> Self {
        Self {
            exec: || loop {
                unsafe {
                    wfi();
                }
            },
            ready: true,
        }
    }
}

pub struct RealTimeProcess {
    exec: fn() -> !,
    priority: u32,
    ready: bool,
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
    pub fn new(exec: fn() -> !, priority: u32) -> Self {
        Self {
            exec,
            priority,
            ready: true,
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
        }
    }

    pub fn priority(&self) -> u32 {
        self.priority
    }
}
