.section .text.start
.globl _start

.equ GPIO_OUT, 0x00003000
.equ GPIO_DIR, 0x00003008

_start:
    li x5, GPIO_DIR
    li x2, 0x03
    sw x2, 0(x5)        # gpio[0] y gpio[1] salida

    li x5, GPIO_OUT     # x5 = base GPIO_OUT
    li x10, 200000      # delay inicial

loop:
    li x2, 0x01
    sw x2, 0(x5)        # LED0 ON, LED1 OFF
    jal ra, delay

    li x2, 0x02
    sw x2, 0(x5)        # LED0 OFF, LED1 ON
    jal ra, delay

    li x13, 20000
    add x10, x10, x13

    li x11, 1000000
    blt x10, x11, loop

    li x10, 200000
    jal x0, loop

delay:
    add x12, x10, x0

dloop:
    addi x12, x12, -1
    bne x12, x0, dloop
    jalr x0, 0(ra)