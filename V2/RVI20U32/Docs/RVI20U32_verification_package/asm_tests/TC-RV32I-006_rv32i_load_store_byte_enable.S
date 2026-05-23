.option norvc
.section .text.start
.global _start

.equ RAM_BASE,      0x00002000
.equ GPIO_BASE,     0x00003000
.equ UART_BASE,     0x00003010
.equ GPIO_OUT,      0x00
.equ GPIO_DIR,      0x08
.equ UART_TXDATA,   0x00
.equ UART_STATUS,   0x04

.macro PASS code
    li t0, RAM_BASE
    li t1, \code
    sw t1, 0(t0)
1:  j 1b
.endm

.macro FAIL code
    li t0, RAM_BASE
    li t1, \code
    sw t1, 0(t0)
1:  j 1b
.endm


_start:
    li t0, RAM_BASE
    li t1, 0x11223344
    sw t1, 16(t0)
    lw t2, 16(t0)
    bne t1, t2, fail

    li t1, 0xAA
    sb t1, 16(t0)
    lw t2, 16(t0)
    li t3, 0x112233AA
    bne t2, t3, fail

    li t1, 0xBEEF
    sh t1, 18(t0)
    lw t2, 16(t0)
    li t3, 0xBEEF33AA
    bne t2, t3, fail

    lb t4, 16(t0)
    li t5, -86              # 0xAA sign-extended
    bne t4, t5, fail
    lbu t4, 16(t0)
    li t5, 0xAA
    bne t4, t5, fail

    PASS 0xCAFE0002
fail:
    FAIL 0xBAD00002
