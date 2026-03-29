.section .text.start
.globl _start

_start:
    addi x1, x0, 5
    addi x2, x0, 5
    beq  x1, x2, target
    addi x3, x0, 3      # debe ser anulada
    addi x4, x0, 4      # puede ser anulada según dónde resuelvas el branch

target:
    addi x5, x0, 5

loop:
    j loop

