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
    li t0, 1
    addi t1, t0, 2
    addi t2, t1, 3
    addi t3, t2, 4
    add  t4, t3, t2
    li t5, 16               # t3=10, t2=6
    bne t4, t5, fail
    PASS 0xCAFE0010
fail:
    FAIL 0xBAD00010
