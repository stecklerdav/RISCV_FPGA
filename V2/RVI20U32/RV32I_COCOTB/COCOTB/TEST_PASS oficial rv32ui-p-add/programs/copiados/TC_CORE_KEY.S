.option norvc
.section .text
.global _start

.equ RAM_BASE, 0x00002000

_start:
    lui  x1, 0x2
    addi x1, x1, 0

    addi x5, x0, 0x11
    sw   x5, 0(x1)

    addi x5, x0, 0x22
    sw   x5, 4(x1)

    addi x5, x0, 0x33
    sw   x5, 8(x1)

    add  x5, x5, x5
    sw   x5, 12(x1)

    add  x5, x5, x5
    sw   x5, 16(x1)

    lw   x10, 0(x1)
    lw   x11, 4(x1)
    lw   x12, 8(x1)
    lw   x13, 12(x1)
    lw   x14, 16(x1)

loop:
    jal x0, loop
