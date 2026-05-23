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
    li t0, 0x12345678
    csrw mscratch, t0
    csrr t1, mscratch
    bne t0, t1, fail

    li t2, 0x0000000F
    csrs mscratch, t2
    csrr t3, mscratch
    li t4, 0x1234567F
    bne t3, t4, fail

    li t2, 0x00000070
    csrc mscratch, t2
    csrr t3, mscratch
    li t4, 0x1234560F
    bne t3, t4, fail

    PASS 0xCAFE0100
fail:
    FAIL 0xBAD00100
