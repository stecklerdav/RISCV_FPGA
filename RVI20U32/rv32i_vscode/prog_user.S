.section .text.start
.globl _start

_start:
    addi x1, x0, 10
    addi x2, x0, 20
    add  x3, x1, x2
    addi x4, x3, 1

done:
    jal x0, done
