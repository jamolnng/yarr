.set REGBYTES, 4

.set __riscv_xlen, 32

.option norvc
.altmacro

.macro save_xreg reg
    sw x\reg, ((\reg - 1) * REGBYTES)(sp)
.endm

.macro save_reg reg n
    sw \reg, (\n * REGBYTES)(sp)
.endm

.macro load_xreg reg
    lw x\reg, ((\reg - 1) * REGBYTES)(sp)
.endm

.macro load_reg reg n
    lw \reg, (\n * REGBYTES)(sp)
.endm

.macro store reg val
    sw \reg, \val
.endm

.macro load reg val
    lw \reg, \val
.endm