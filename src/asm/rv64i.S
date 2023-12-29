.set REGBYTES, 8
.set TRAPSIZE, 34

.set __riscv_xlen, 64

.option norvc
.altmacro

.macro store reg, val
    sd \reg, \val
.endm

.macro load reg, val
    ld \reg, \val
.endm