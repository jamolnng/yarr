.set REGBYTES, 4
.set TRAPSIZE, 34

.set __riscv_xlen, 32

.option norvc
.altmacro

.macro storex reg, val
    sw x\reg, \val
.endm

.macro loadx reg, val
    lw x\reg, \val
.endm

.macro store reg, val
    sw \reg, \val
.endm

.macro load reg, val
    lw \reg, \val
.endm