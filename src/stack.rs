use core::arch::asm;

#[allow(dead_code)]
#[repr(C)]
pub struct Stack<'a> {
    stack_ptr: *mut usize,
    data: &'a mut [usize],
}

impl<'a> Stack<'a> {
    pub fn new(data: &'a mut [usize]) -> Self {
        Self {
            stack_ptr: unsafe { (&mut (data[data.len() - 1]) as *mut usize).add(1) },
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
        self.data[self.data.len() - 1] = exec as *const () as usize;
        self.data[self.data.len() - 2] = mstatus;
        unsafe {
            self.stack_ptr = self.stack_ptr.sub(30);
        }
    }

    pub fn ptr(&self) -> *mut usize {
        self.stack_ptr
    }
}
