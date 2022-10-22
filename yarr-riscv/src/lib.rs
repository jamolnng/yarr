#![no_std]

pub mod asm;

pub use riscv_rt::entry;
use yarr::process::Process;

#[no_mangle]
fn yarr_idle_task() -> ! {
    loop {
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
        unsafe {
            riscv::asm::wfi();
        }
    }
}

#[no_mangle]
fn yarr_init_process(process: &mut Process) -> usize {
    core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
    let mut mstatus: usize;
    unsafe {
        core::arch::asm!(
            "csrr {0}, mstatus",
            out(reg) mstatus,
        );
    }
    // (0x188 << 4) | 8 = 0x1888 = 6280 = 0b0001100010001000 // enable MPP, MPIE, and MIE bits
    mstatus |= 0x1888;
    process.stack[process.stack.len() - 1] = process.exec as *const () as usize;
    process.stack[process.stack.len() - 2] = mstatus;
    // unsafe {
    //     self.stack_ptr = self.stack_ptr.sub(30);
    // }
    unsafe { process.stack.as_ptr().sub(31) as usize }
}