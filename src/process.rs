use crate::cpu::TrapFrame;

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
        Self { data, len }
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
#[derive(Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum Sleep {
    Ticks(usize),
    Until(usize),
}

#[repr(C)]
#[derive(Debug, PartialEq, Eq, PartialOrd, Ord)]
#[allow(dead_code)]
pub enum State {
    Running,
    Waiting,
    Sleeping(Sleep),
}

#[repr(C)]
#[derive(Debug)]
pub struct Process {
    frame: TrapFrame,
    stack: usize,
    pid: usize,
    state: State,
}

impl Process {
    pub fn new<S: MemoryRegion>(pid: usize, stack: *mut S, exec: fn() -> !) -> Self {
        Self {
            frame: TrapFrame::new(unsafe { stack.as_ref() }.unwrap().end(), exec.into()),
            stack: unsafe { stack.as_ref() }.unwrap().end(),
            pid,
            state: State::Running,
        }
    }

    pub fn state(&self) -> &State {
        &self.state
    }

    pub fn pid(&self) -> usize {
        self.pid
    }
}
