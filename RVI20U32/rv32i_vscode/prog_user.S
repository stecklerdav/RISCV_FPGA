.section .text.start
.globl _start

_start:
    addi x1, x0, 9
    add  x2, x1, x1      # x2 = 18, necesita forward para A y B
    addi x3, x2, 1       # x3 = 19, necesita forward otra vez

done:
    jal  x0, done