#[cfg(target_arch="riscv32")]
core::arch::global_asm!(core::include_str!("asm/core32.S"));

#[cfg(target_arch="riscv64")]
core::arch::global_asm!(core::include_str!("asm/core64.S"));


core::arch::global_asm!(core::include_str!("asm/trap.S"));
core::arch::global_asm!(core::include_str!("asm/start.S"));