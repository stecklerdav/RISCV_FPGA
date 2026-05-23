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
    li t0, GPIO_BASE
    li t1, 0xFF
    sw t1, GPIO_DIR(t0)
    li t1, 0xA5
    sw t1, GPIO_OUT(t0)
    # Si tu GPIO soporta readback en GPIO_OUT:
    lw t2, GPIO_OUT(t0)
    andi t2, t2, 0xFF
    li t3, 0xA5
    bne t2, t3, fail
    PASS 0xCAFE0300
fail:
    FAIL 0xBAD00300
