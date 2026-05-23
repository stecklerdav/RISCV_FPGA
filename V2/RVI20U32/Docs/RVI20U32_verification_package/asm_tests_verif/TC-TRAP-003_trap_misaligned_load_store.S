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
    li t1, RAM_BASE
    lw t2, 1(t1)            # misaligned load: expected trap if implemented
after_misaligned:
    li t0, 1
    bne s0, t0, fail
    PASS 0xCAFE0202

.align 2
trap_handler:
    csrr t1, mcause
    li t2, 4                # load address misaligned
    bne t1, t2, trap_fail
    csrr t3, mepc
    addi t3, t3, 4
    csrw mepc, t3
    li s0, 1
    mret
trap_fail:
    li s0, 0
    mret
fail:
    FAIL 0xBAD00202
