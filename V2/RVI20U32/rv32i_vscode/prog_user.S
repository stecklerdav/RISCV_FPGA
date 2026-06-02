.option norvc
.section .text
.global _start

.equ GPIO_OUT, 0x00003000
.equ GPIO_IN,  0x00003004

_start:
    lui  x10, 0x3
    addi x11, x10, 0x000      # x11 = GPIO_OUT = 0x3000
    addi x12, x10, 0x004      # x12 = GPIO_IN  = 0x3004

    la   x1, trap_handler
    csrw mtvec, x1

main_loop:
    li   x5, 0x1              # LED0 ON, LED1 OFF
    sw   x5, 0(x11)

wait_press:
    lw   x6, 0(x12)
    andi x6, x6, 1
    bne  x6, x0, wait_press   # activo bajo: espera hasta que SW=0

    ecall

after_trap:
    li   x5, 0x3              # LED0 ON, LED1 ON
    sw   x5, 0(x11)

wait_release:
    lw   x6, 0(x12)
    andi x6, x6, 1
    beq  x6, x0, wait_release # espera hasta que SW vuelva a 1

release_done:
    li   x5, 0x0              # ambos OFF: salió de wait_release
    sw   x5, 0(x11)

delay:
    li   x7, 1000000
delay_loop:
    addi x7, x7, -1
    bne  x7, x0, delay_loop

    jal  x0, main_loop


trap_handler:
    li   x5, 0x2              # LED0 OFF, LED1 ON: entró al trap
    sw   x5, 0(x11)

    csrr x7, mepc
    addi x7, x7, 4            # saltar ecall
    csrw mepc, x7

    mret