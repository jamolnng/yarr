.set REGBYTES, 8

.set __riscv_xlen, 64

.option norvc
.altmacro

.macro save_xreg reg
    sd x\reg, ((\reg - 1) * REGBYTES)(sp)
.endm

.macro save_reg reg n
    sd \reg, (\n * REGBYTES)(sp)
.endm

.macro load_xreg reg
    ld x\reg, ((\reg - 1) * REGBYTES)(sp)
.endm

.macro load_reg reg n
    ld \reg, (\n * REGBYTES)(sp)
.endm

.macro store reg val
    sd \reg, \val
.endm

.macro load reg val
    ld \reg, \val
.endm