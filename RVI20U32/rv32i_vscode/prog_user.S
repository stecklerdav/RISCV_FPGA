.section .text.start
.globl _start

_start:
    addi x1, x0, 1
    addi x2, x0, 2
    addi x3, x0, 3
    addi x4, x0, 4

done:
    jal x0, done