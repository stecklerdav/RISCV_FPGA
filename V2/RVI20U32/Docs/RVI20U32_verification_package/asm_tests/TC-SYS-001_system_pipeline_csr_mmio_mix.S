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
    li t1, 0x10
    sw t1, 64(t0)
    lw t2, 64(t0)
    addi t3, t2, 5
    li t4, 0x15
    bne t3, t4, fail

    csrw mscratch, t3
    csrr t5, mscratch
    bne t5, t3, fail

    li t0, GPIO_BASE
    li t1, 0xFF
    sw t1, GPIO_DIR(t0)
    li t1, 0x3C
    sw t1, GPIO_OUT(t0)

    li t2, 1
    beq t2, zero, fail
    PASS 0xCAFE0500
fail:
    FAIL 0xBAD00500
