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

    # Enable Machine Timer Interrupt: mie.MTIE bit 7
    li t0, (1 << 7)
    csrs mie, t0

    # Enable global machine interrupts: mstatus.MIE bit 3
    li t0, (1 << 3)
    csrs mstatus, t0

    # El testbench/periférico debe activar timer_irq/MTIP después.
wait_irq:
    li t1, 0x1000
delay:
    addi t1, t1, -1
    bne t1, zero, delay

    li t2, 1
    bne s0, t2, fail
    PASS 0xCAFE0400

.align 2
trap_handler:
    csrr t0, mcause
    # Esperado: interrupt bit=1 y code=7 => 0x80000007
    li t1, 0x80000007
    bne t0, t1, trap_fail
    li s0, 1
    mret
trap_fail:
    li s0, 0
    mret

fail:
    FAIL 0xBAD00400
