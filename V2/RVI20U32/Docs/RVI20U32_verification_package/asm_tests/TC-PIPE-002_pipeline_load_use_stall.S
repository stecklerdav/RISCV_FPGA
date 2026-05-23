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
    li t1, 0x12345678
    sw t1, 32(t0)
    lw t2, 32(t0)
    addi t3, t2, 1          # immediate load-use consumer
    li t4, 0x12345679
    bne t3, t4, fail
    PASS 0xCAFE0011
fail:
    FAIL 0xBAD00011
