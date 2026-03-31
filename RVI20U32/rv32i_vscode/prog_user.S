.section .text.start
.globl _start

_start:
    addi x10, x0, 10
    addi x11, x0, 11
    addi x12, x0, 12
    addi x13, x0, 13
    addi x14, x0, 14

loop:
    j loop
