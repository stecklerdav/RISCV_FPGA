.option norvc
.section .text.start
.global _start

.equ RAM_BASE,  0x00002000
.equ GPIO_BASE, 0x00003000
.equ GPIO_OUT,  0x00
.equ GPIO_IN,   0x04
.equ GPIO_DIR,  0x08

_start:
    li   x1, GPIO_BASE

    li   x2, 0x00000003
    sw   x2, GPIO_DIR(x1)      # GPIO[1:0] output

    li   x3, 0x00000001
    sw   x3, GPIO_OUT(x1)

    lw   x4, GPIO_OUT(x1)
    li   x5, 0x00000001
    bne  x4, x5, fail

    li   x3, 0x00000002
    sw   x3, GPIO_OUT(x1)

    lw   x4, GPIO_OUT(x1)
    li   x5, 0x00000002
    bne  x4, x5, fail

pass:
    li   x10, RAM_BASE
    li   x11, 0xCAFE0007
    sw   x11, 0(x10)
    j    done

fail:
    li   x10, RAM_BASE
    li   x11, 0xBAD00007
    sw   x11, 0(x10)

done:
    j    done