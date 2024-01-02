#[cfg(target_arch = "riscv32")]
core::arch::global_asm!(core::include_str!("asm/rv32i.S"));

#[cfg(target_arch = "riscv64")]
core::arch::global_asm!(core::include_str!("asm/rv64i.S"));

core::arch::global_asm!(core::include_str!("asm/trap.S"));
core::arch::global_asm!(core::include_str!("asm/syscall.S"));
