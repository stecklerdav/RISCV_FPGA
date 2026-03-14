.section .text
.globl _start

_start:
    addi x1,x0,100
    addi x2,x0,5
    sw   x2,0(x1)
    lw   x3,0(x1)
    nop
    nop
    add  x4,x3,x2
    nop
    nop
    beq  x4,x3,end
    nop
    nop
    addi x5,x0,99
    end:
    addi x6,x0,7

