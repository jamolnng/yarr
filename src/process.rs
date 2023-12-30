use crate::cpu::{Register, TrapFrame};

#[repr(C)]
#[derive(Debug)]
pub struct Stack {
    data: *mut usize,
    len: usize,
}

impl Stack {
    pub const fn from(data: *mut usize, len: usize) -> Self {
        Self { data, len: len * core::mem::size_of::<usize>() }
    }

    pub const fn from_sized<const N: usize>(data: *mut [usize; N]) -> Self {
        Self { data: data as *mut usize, len: N * core::mem::size_of::<usize>() }
    }

    #[inline]
    pub fn begin(&self) -> usize {
        self.data as *mut usize as usize
    }

    #[inline]
    pub fn end(&self) -> usize {
        self.begin() + self.len
    }
}

#[repr(C)]
#[derive(Debug)]
pub struct Process {
    pub frame: TrapFrame,
    stack: Stack,
    priority: usize,
}

impl Process {
    pub const fn from(priority: usize, data: *mut usize, len: usize) -> Self {
        Self {
            frame: TrapFrame::new(),
            stack: Stack::from(data, len),
            priority,
        }
    }

    pub const fn from_sized<const N: usize>(priority: usize, data: *mut [usize; N]) -> Self {
        Self {
            frame: TrapFrame::new(),
            stack: Stack::from_sized(data),
            priority,
        }
    }

    pub fn init(&mut self, exec: fn() -> !) {
        *self.frame.registers().at(Register::SP) = self.stack.end();
        self.frame.pc(exec.into());
    }
}
