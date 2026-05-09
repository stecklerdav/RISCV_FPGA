.section .text
.globl _start

_start:
    # UART base = 0x3010
    lui  x10, 0x3
    addi x10, x10, 0x010

    # RAM destino = 0x2000
    lui  x11, 0x2

    # =========================
    # enviar/recibir 'd'
    # =========================
    addi x5, x0, 100        # 'd' = 0x64

wait_tx_d:
    lw   x6, 4(x10)         # STATUS
    andi x7, x6, 1          # bit0 = tx_ready
    beq  x7, x0, wait_tx_d

    sw   x5, 0(x10)         # TXDATA = 'd'

wait_rx_d:
    lw   x6, 4(x10)         # STATUS
    andi x7, x6, 4          # bit2 = rx_ready
    beq  x7, x0, wait_rx_d

    lw   x8, 8(x10)         # RXDATA
    sw   x8, 0(x11)         # RAM[0x2000] = 'd'

    # =========================
    # enviar/recibir 'a'
    # =========================
    addi x5, x0, 97         # 'a'

wait_tx_a:
    lw   x6, 4(x10)
    andi x7, x6, 1
    beq  x7, x0, wait_tx_a

    sw   x5, 0(x10)

wait_rx_a:
    lw   x6, 4(x10)
    andi x7, x6, 4
    beq  x7, x0, wait_rx_a

    lw   x8, 8(x10)
    sw   x8, 4(x11)

    # =========================
    # enviar/recibir 'v'
    # =========================
    addi x5, x0, 118        # 'v'

wait_tx_v:
    lw   x6, 4(x10)
    andi x7, x6, 1
    beq  x7, x0, wait_tx_v

    sw   x5, 0(x10)

wait_rx_v:
    lw   x6, 4(x10)
    andi x7, x6, 4
    beq  x7, x0, wait_rx_v

    lw   x8, 8(x10)
    sw   x8, 8(x11)

    # =========================
    # enviar/recibir 'i'
    # =========================
    addi x5, x0, 105        # 'i'

wait_tx_i:
    lw   x6, 4(x10)
    andi x7, x6, 1
    beq  x7, x0, wait_tx_i

    sw   x5, 0(x10)

wait_rx_i:
    lw   x6, 4(x10)
    andi x7, x6, 4
    beq  x7, x0, wait_rx_i

    lw   x8, 8(x10)
    sw   x8, 12(x11)

    # =========================
    # enviar/recibir 'd'
    # =========================
    addi x5, x0, 100        # 'd'

wait_tx_d2:
    lw   x6, 4(x10)
    andi x7, x6, 1
    beq  x7, x0, wait_tx_d2

    sw   x5, 0(x10)

wait_rx_d2:
    lw   x6, 4(x10)
    andi x7, x6, 4
    beq  x7, x0, wait_rx_d2

    lw   x8, 8(x10)
    sw   x8, 16(x11)

done:
    jal x0, done