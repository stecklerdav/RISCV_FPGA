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
    la t0, trap_handler
    csrw mtvec, t0
    csrr t1, mtvec
    # Para mtvec direct mode, bits [1:0] pueden ser 00.
    li t2, -4
    and t0, t0, t2
    and t1, t1, t2
    bne t0, t1, fail
    PASS 0xCAFE0101

.align 2
trap_handler:
    j trap_handler

fail:
    FAIL 0xBAD00101
