.section .text.start
.globl _start

_start:
    addi x1, x0, 1
    addi x2, x0, 2

target:
    addi x3, x0, 3
    j target
