.option norvc
.section .text
.global _start


.equ RAM_BASE,  0x00002000
.equ UART_BASE, 0x00003010

_start:
    lui  x1, 0x2          # RAM_BASE
    lui  x2, 0x3
    addi x2, x2, 0x10     # UART_BASE

    lw   x5, 0(x2)        # lectura UART: nunca responde -> timeout

    addi x6, x0, 0x55     # si el core continúa, llega aquí
    sw   x6, 0(x1)

end:
    jal x0, end