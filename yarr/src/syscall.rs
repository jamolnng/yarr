use crate::internal;

pub use crate::internal::syscall::SyscallF;

#[inline]
pub fn syscall_yield() {
    unsafe {
        internal::syscall::yarr_make_syscall(
            0, // yield
            0, // arg0
            0, // arg1
            0, // arg2
            0, // arg3
            0, // arg4
            0, // arg5
        )
    };
}

#[inline]
pub fn syscall_putc(c: char) {
    unsafe {
        internal::syscall::yarr_make_syscall(1, c as usize, 0, 0, 0, 0, 0);
    }
}

#[inline]
pub fn syscall_sleep_for(duration: u64) {
    #[cfg(target_arch = "riscv32")]
    unsafe {
        let hi = (duration >> 32) as usize;
        let lo = (duration & 0xFFFF_FFFF) as usize;
        internal::syscall::yarr_make_syscall(10, hi, lo, 0, 0, 0, 0);
    }
    #[cfg(target_arch = "riscv64")]
    unsafe {
        internal::syscall::yarr_make_syscall(10, duration, 0, 0, 0, 0, 0);
    }
}

#[inline]
pub fn syscall_sleep_ticks(ticks: u64) {
    #[cfg(target_arch = "riscv32")]
    unsafe {
        let hi = (ticks >> 32) as usize;
        let lo = (ticks & 0xFFFF_FFFF) as usize;
        internal::syscall::yarr_make_syscall(11, hi, lo, 0, 0, 0, 0);
    }
    #[cfg(target_arch = "riscv64")]
    unsafe {
        internal::syscall::yarr_make_syscall(11, ticks as usize, 0, 0, 0, 0, 0);
    }
}
