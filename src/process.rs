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
    pid: usize,
}

impl Process {
    pub const fn from(pid: usize, data: *mut usize, len: usize) -> Self {
        Self {
            frame: TrapFrame::new(),
            stack: Stack::from(data, len),
            pid,
        }
    }

    pub const fn from_sized<const N: usize>(pid: usize, data: *mut [usize; N]) -> Self {
        Self {
            frame: TrapFrame::new(),
            stack: Stack::from_sized(data),
            pid,
        }
    }

    pub fn init(&mut self, exec: fn() -> !) {
        *self.frame.registers().at(Register::SP) = self.stack.end();
        self.frame.pc(exec.into());
    }
}
