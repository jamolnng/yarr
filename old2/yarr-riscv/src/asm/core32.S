.set REGBYTES, 4

.set __riscv_xlen, 32

.option norvc
.altmacro

.macro store reg, val
    sw \reg, \val
.endm

.macro load reg, val
    lw \reg, \val
.endm