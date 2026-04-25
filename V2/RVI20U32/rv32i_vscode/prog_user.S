.section .text.start
.globl _start

_start:
    addi x1, x0, 0        # x1 = base address 0
    addi x2, x0, 5        # x2 = 5

    lw   x5, 0(x1)        # x5 = MEM[0]
    add  x6, x5, x2       # x6 = x5 + 5  <-- debe hacer stall 1 ciclo

    addi x7, x0, 1        # marcador de continuación

done:
    jal x0, done