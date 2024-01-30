#![no_std]

use schedule::Scheduler;

pub mod schedule;
pub mod syscall;

#[cfg(feature = "riscv")]
pub(crate) mod internal {
    pub(crate) use yarr_riscv::*;
}

#[cfg(all(feature = "yarr-arm", not(feature = "riscv")))]
pub(crate) mod internal {
    pub(crate) use yarr_arm::*;
}

#[cfg(feature = "riscv")]
pub use yarr_riscv::yarr_wfi;

pub mod cpu {
    pub use crate::internal::cpu::Register;
    pub use crate::internal::cpu::TrapFrame;
}
pub mod process {
    pub use crate::internal::process::Process;
}

#[allow(clippy::missing_safety_doc)]
pub unsafe fn init(
    scheduler: *mut dyn Scheduler,
    syscalls: Option<crate::syscall::SyscallF>,
    switch_time: u64,
) {
    schedule::init(scheduler);
    internal::init(syscalls, switch_time);
}

pub fn start() -> ! {
    internal::schedule::schedule_and_switch()
}
