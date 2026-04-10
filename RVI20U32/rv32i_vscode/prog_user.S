.section .text.start
.globl _start

_start:
    addi x1, x0, 5
    addi x2, x0, 5
    beq  x1, x2, target

    addi x10, x0, 0x0A
    addi x11, x0, 0x0B
    addi x12, x0, 0x0C
    addi x13, x0, 0x0D
    addi x14, x0, 0x0E

target:
    addi x20, x0, 0x1A
    addi x21, x0, 0x1B
    addi x22, x0, 0x1C
    addi x23, x0, 0x1D
    addi x24, x0, 0x1E
done:
    jal x0, done
