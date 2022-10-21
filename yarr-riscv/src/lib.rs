#![no_std]

pub mod asm;
pub mod scheduler;

pub use riscv_rt::entry;

#[allow(non_snake_case)]
#[no_mangle]
fn IDLE_TASK() -> ! {
    loop {
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
        unsafe {
            riscv::asm::wfi();
        }
    }
}
