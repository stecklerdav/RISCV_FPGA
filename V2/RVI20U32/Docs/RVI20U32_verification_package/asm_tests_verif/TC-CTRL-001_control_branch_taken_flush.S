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
    li t1, 1
    li t2, 1
    beq t1, t2, good
    li t3, 0xDEAD0020       # wrong path: must not commit
    sw t3, 4(t0)
    j fail
good:
    lw t4, 4(t0)
    bne t4, zero, fail
    PASS 0xCAFE0020
fail:
    FAIL 0xBAD00020
