.option norvc
.section .text.start
.global _start

_start:
    addi x1, x0, 1      // instr 0, PC 0x00
    addi x2, x0, 2      // instr 1, PC 0x04
    addi x3, x0, 3      // instr 2, PC 0x08
    addi x4, x0, 4      // instr 3, PC 0x0C
    addi x5, x0, 5      // instr 4, PC 0x10
    addi x6, x0, 6      // instr 5, PC 0x14
    addi x7, x0, 7      // instr 6, PC 0x18
    addi x8, x0, 8      // instr 7, PC 0x1C

loop:
    jal x0, loop        // instr 8, PC 0x20
