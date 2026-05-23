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
    la t0, return_point
    csrw mepc, t0
    mret
    li t1, RAM_BASE         # wrong path; must not commit after mret redirect
    li t2, 0xDEAD0203
    sw t2, 4(t1)
    j fail

return_point:
    li t1, RAM_BASE
    lw t2, 4(t1)
    bne t2, zero, fail
    PASS 0xCAFE0203
fail:
    FAIL 0xBAD00203
