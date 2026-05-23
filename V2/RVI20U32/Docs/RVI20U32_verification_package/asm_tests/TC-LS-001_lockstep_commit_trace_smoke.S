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
    li x1, 1
    li x2, 2
    add x3, x1, x2
    addi x4, x3, 4
    slli x5, x4, 1
    li t0, RAM_BASE
    sw x5, 80(t0)
    lw x6, 80(t0)
    bne x6, x5, fail
    PASS 0xCAFE0600
fail:
    FAIL 0xBAD00600
