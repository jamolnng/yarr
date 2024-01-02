#![no_std]

mod asm;
pub mod cpu;
pub mod process;
pub mod schedule;
pub mod syscall;
pub mod time;
pub mod trap;

#[allow(clippy::missing_safety_doc)]
pub unsafe fn init(syscalls: Option<syscall::SyscallF>, switch_time: u64) {
    unsafe {
        trap::init();
        schedule::init(switch_time);
        syscall::init(syscalls);
    }
}

pub fn yarr_wfi() {
    unsafe {
        core::arch::asm!("wfi");
    }
}
