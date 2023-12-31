use crate::cpu::{Register, TrapFrame};

pub trait MemoryRegion {
    fn take(&self);
    fn begin(&self) -> usize;
    fn len(&self) -> usize;
    fn end(&self) -> usize;
}

#[repr(C)]
#[derive(Debug)]
pub struct Stack {
    data: *mut u8,
    len: usize,
}

#[allow(dead_code)]
impl Stack {
    pub const fn from(data: *mut u8, len: usize) -> Self {
        Self {
            data,
            len,
        }
    }
}

impl MemoryRegion for Stack {
    #[inline]
    fn take(&self) {}

    #[inline]
    fn begin(&self) -> usize {
        self.data as *mut usize as usize
    }

    #[inline]
    fn end(&self) -> usize {
        self.begin() + self.len
    }

    #[inline]
    fn len(&self) -> usize {
        self.len
    }
}

#[repr(C, align(64))]
#[derive(Debug)]
pub struct StaticStack<const N: usize>([u8; N]);

impl<const N: usize> StaticStack<N> {
    pub const fn new() -> Self {
        Self([0; N])
    }
}

impl<const N: usize> MemoryRegion for StaticStack<N> {
    fn take(&self) {
        // pmp stuff
    }

    #[inline]
    fn begin(&self) -> usize {
        self.0.as_ptr() as usize
    }

    #[inline]
    fn end(&self) -> usize {
        self.begin() + self.len()
    }

    #[inline]
    fn len(&self) -> usize {
        self.0.len()
    }
}

#[repr(C)]
pub struct Process<'a> {
    frame: &'a mut TrapFrame,
    stack: &'a dyn MemoryRegion,
    pid: usize,
}

impl<'a> Process<'a> {
    pub fn take(&mut self) -> &mut TrapFrame {
        // unsafe {
        //     // self.stack.as_ref().take();
        // }
        &mut self.frame
    }

    pub fn new(pid: usize, frame: &'a mut TrapFrame, stack: &'a mut dyn MemoryRegion, exec: fn() -> !) -> Self {
        frame.registers().set(Register::SP, stack.end());
        frame.pc(exec.into());
        Self {
            frame,
            stack,
            pid,
        }
    }
}
