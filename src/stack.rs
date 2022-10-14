use core::arch::asm;

#[allow(dead_code)]
pub struct Stack<'a> {
    stack_ptr: usize,
    data: &'a mut [usize],
}

#[cfg(target_arch = "riscv32")]
const WORD_SIZE: usize = 4;

#[cfg(target_arch = "riscv64")]
const WORD_SIZE: usize = 8;

impl<'a> Stack<'a> {
    pub fn new(data: &'a mut [usize]) -> Self {
        let stack_ptr = (&mut (data[data.len() - 1]) as *mut usize as usize) + WORD_SIZE; // this is an ugly hack
        Self {
            stack_ptr: stack_ptr,
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
        self.stack_ptr -= 2 * WORD_SIZE;
        self.data[self.stack_ptr + 1] = &exec as *const fn() -> ! as *const usize as usize;
        self.data[self.stack_ptr] = mstatus;
        self.stack_ptr -= 28 * WORD_SIZE;
    }
}
