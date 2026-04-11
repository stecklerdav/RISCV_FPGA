.section .text.start
.globl _start

_start:
    jal  x1, target
    addi x2, x0, 22          # wrong-path

target:
    addi x3, x1, 0

done:
    jal x0, done