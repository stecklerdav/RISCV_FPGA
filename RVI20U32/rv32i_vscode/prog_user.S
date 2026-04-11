
.section .text.start
.globl _start

_start:
    addi x1, x0, -1          # I-type
    lui  x2, 0x12345         # U-type
    auipc x3, 0              # U-type relativo a PC
    beq  x0, x0, label_b     # B-type
    addi x4, x0, 99          # wrong-path

label_b:
    jal  x5, label_j         # J-type
    addi x6, x0, 88          # wrong-path

label_j:
    addi x7, x0, 7

done:
    jal x0, done