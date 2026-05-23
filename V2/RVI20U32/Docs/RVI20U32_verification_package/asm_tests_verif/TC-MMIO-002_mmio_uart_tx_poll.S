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
    li t0, UART_BASE

wait_o:
    lw t1, UART_STATUS(t0)
    andi t1, t1, 1
    beq t1, zero, wait_o
    li t2, 'O'
    sw t2, UART_TXDATA(t0)

wait_k:
    lw t1, UART_STATUS(t0)
    andi t1, t1, 1
    beq t1, zero, wait_k
    li t2, 'K'
    sw t2, UART_TXDATA(t0)

wait_n:
    lw t1, UART_STATUS(t0)
    andi t1, t1, 1
    beq t1, zero, wait_n
    li t2, 10
    sw t2, UART_TXDATA(t0)

    PASS 0xCAFE0301
fail:
    FAIL 0xBAD00301
