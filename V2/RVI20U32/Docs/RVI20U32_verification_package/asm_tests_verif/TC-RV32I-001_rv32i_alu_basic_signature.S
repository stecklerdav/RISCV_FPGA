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
    li t0, 5
    li t1, 7
    add t2, t0, t1          # 12
    li t3, 12
    bne t2, t3, fail

    sub t2, t1, t0          # 2
    li t3, 2
    bne t2, t3, fail

    li t0, 0x55
    li t1, 0x0F
    and t2, t0, t1          # 0x05
    li t3, 0x05
    bne t2, t3, fail

    or t2, t0, t1           # 0x5F
    li t3, 0x5F
    bne t2, t3, fail

    xor t2, t0, t1          # 0x5A
    li t3, 0x5A
    bne t2, t3, fail

    li t0, 1
    slli t2, t0, 8          # 0x100
    li t3, 0x100
    bne t2, t3, fail

    srli t2, t2, 4          # 0x10
    li t3, 0x10
    bne t2, t3, fail

    li t0, -8
    srai t2, t0, 1          # -4
    li t3, -4
    bne t2, t3, fail

    PASS 0xCAFE0001
fail:
    FAIL 0xBAD00001
