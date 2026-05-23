.option norvc
.section .text.start
.global _start

.equ GPIO_BASE,  0x00003000
.equ GPIO_OUT,   0x00
.equ GPIO_IN,    0x04
.equ GPIO_DIR,   0x08

_start:

    # x1 = GPIO_BASE
    li x1, GPIO_BASE

    # bit0 = input
    # bit1 = output
    # bit2 = output
    li x2, 0x06
    sw x2, GPIO_DIR(x1)

loop:

    # leer GPIO input
    lw   x3, GPIO_IN(x1)

    # evitar load-use hazard
    nop
    nop

    # aislar bit0
    andi x4, x3, 0x01

    # si bit0 == 0 -> switch_off
    beq  x4, x0, switch_off

switch_on:

    # LED0 ON
    # LED1 OFF
    li   x5, 0x02
    sw   x5, GPIO_OUT(x1)

    jal  x0, loop

switch_off:

    # LED0 OFF
    # LED1 ON
    li   x5, 0x04
    sw   x5, GPIO_OUT(x1)

    jal  x0, loop