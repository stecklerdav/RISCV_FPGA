.option norvc
.section .text
.globl _start

_start:

addi x1, x0, 1
addi x2, x0, 1

beq x1, x2, target

addi x5, x0, 99

target:
addi x6, x0, 7

loop:
jal x0, loop