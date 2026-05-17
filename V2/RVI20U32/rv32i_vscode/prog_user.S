.option norvc
.section .text.start, "ax", @progbits
.global _start

.equ RAM_BASE,      0x00002000
.equ UART_BASE,     0x00003010

.equ UART_TXDATA,   0x00
.equ UART_STATUS,   0x04
.equ UART_RXDATA,   0x08

_start:
    lui  x1, %hi(RAM_BASE)
    addi x1, x1, %lo(RAM_BASE)

    lui  x3, %hi(UART_BASE)
    addi x3, x3, %lo(UART_BASE)

tx_wait:
    lw   x6, UART_STATUS(x3)
    andi x6, x6, 1
    beq  x6, x0, tx_wait

    li   x7, 'D'
    sw   x7, UART_TXDATA(x3)

rx_wait:
    lw   x6, UART_STATUS(x3)
    andi x6, x6, 2
    beq  x6, x0, rx_wait

    lw   x8, UART_RXDATA(x3)

    sw   x8, 0(x1)

done:
    j done