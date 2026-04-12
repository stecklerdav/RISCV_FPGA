.section .text.start
.globl _start

_start:
    addi x1, x0, 5
    lw   x2, 0(x1)      # load (provoca hazard)
    beq  x2, x2, target

    addi x3, x0, 99     # wrong path

target:
    addi x4, x0, 42

done:
    jal x0, done