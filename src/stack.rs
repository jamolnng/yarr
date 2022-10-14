use core::arch::asm;

#[allow(dead_code)]
pub struct Stack<'a> {
    stack_ptr: usize,
    data: &'a mut [usize],
}

impl<'a> Stack<'a> {
    pub fn new(data: &'a mut [usize]) -> Self {
        Self {
            stack_ptr: data.len(),
            data,
        }
    }

    pub fn init(&mut self, exec: fn() -> !) {
        unsafe {
            riscv::register::mstatus::set_mpp(riscv::register::mstatus::MPP::Machine);
            riscv::register::mstatus::set_mpie();
            riscv::register::mstatus::set_mie();
        }
        let mut mstatus: usize;
        unsafe {
            asm!(
                "csrr {0}, mstatus",
                out(reg) mstatus,
            );
        }
        self.data[self.stack_ptr - 1] = &exec as *const fn() -> ! as *const usize as usize;
        self.data[self.stack_ptr - 2] = mstatus;
        self.stack_ptr -= 30;
    }

    pub fn ptr(&self) -> usize {
        &self.data[self.stack_ptr] as *const usize as usize
    }
}
