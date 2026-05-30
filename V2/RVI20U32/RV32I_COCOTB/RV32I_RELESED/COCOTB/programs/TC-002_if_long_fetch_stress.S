.option norvc
.section .text.start
.global _start

_start:
    addi x1,  x0,  1      // PC 0x0000
    addi x2,  x0,  2      // PC 0x0004
    addi x3,  x0,  3      // PC 0x0008
    addi x4,  x0,  4      // PC 0x000C
    addi x5,  x0,  5      // PC 0x0010
    addi x6,  x0,  6      // PC 0x0014
    addi x7,  x0,  7      // PC 0x0018
    addi x8,  x0,  8      // PC 0x001C
    addi x9,  x0,  9      // PC 0x0020
    addi x10, x0, 10      // PC 0x0024
    addi x11, x0, 11      // PC 0x0028
    addi x12, x0, 12      // PC 0x002C
    addi x13, x0, 13      // PC 0x0030
    addi x14, x0, 14      // PC 0x0034
    addi x15, x0, 15      // PC 0x0038
    addi x16, x0, 16      // PC 0x003C

    lui  x17, 0x12345     // PC 0x0040
    auipc x18, 0x00010    // PC 0x0044
    addi x19, x0, -1      // PC 0x0048
    addi x20, x0, -2      // PC 0x004C

    xor  x21, x1, x2      // PC 0x0050
    or   x22, x3, x4      // PC 0x0054
    and  x23, x5, x6      // PC 0x0058
    slt  x24, x7, x8      // PC 0x005C

    slli x25, x9, 1       // PC 0x0060
    srli x26, x10, 1      // PC 0x0064
    srai x27, x11, 1      // PC 0x0068

    add  x28, x12, x13    // PC 0x006C
    sub  x29, x14, x15    // PC 0x0070

    nop                   // PC 0x0074
    nop                   // PC 0x0078
    nop                   // PC 0x007C

    addi x30, x0, 30      // PC 0x0080
    addi x31, x0, 31      // PC 0x0084

    jal x0, .             // PC 0x0088
