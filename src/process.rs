use crate::cpu::{ProgramCounter, Register, TrapFrame};

#[repr(C)]
pub struct Process {
    pub frame: TrapFrame,
    stack: [u8; 1024],
    priority: usize,
}

impl Process {
    pub const fn new(priority: usize) -> Self {
        Self {
            frame: TrapFrame::new(),
            stack: [0; 1024],
            priority,
        }
        // *r.frame.registers().at(Register::SP) = &r.stack as *const u8 as usize;
        // r.frame.pc(ProgramCounter::from(exec as *const () as usize));
        // r
    }

    pub fn init(&mut self, exec: fn() -> !) {
        *self.frame.registers().at(Register::SP) = self.stack.as_ptr() as usize + self.stack.len();
        self.frame
            .pc(ProgramCounter::from(exec as *const () as usize));
    }
}
