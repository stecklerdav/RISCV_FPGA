.section .text.start
.globl _start

_start:
    la    x10, target
    jalr  x1, x10, 0
    addi  x2, x0, 22         # wrong-path

target:
    addi  x3, x0, 77

done:
    jal x0, done