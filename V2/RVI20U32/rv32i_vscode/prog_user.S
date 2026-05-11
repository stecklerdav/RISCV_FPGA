.section .text
.globl _start

_start:
    ################################################################
    # MAPA
    #
    # RAM_SRC    = 0x2000  david original
    # RAM_COPY   = 0x2040  copia desde RAM_SRC
    # RAM_RX     = 0x2080  recibido desde UART RX
    # RESULT     = 0x2100  errores
    # PASS_FLAG  = 0x2104  1 = PASS, 0xEE = FAIL
    #
    # UART_BASE   = 0x3010
    # UART_TXDATA = 0x3010
    # UART_STATUS = 0x3014
    # UART_RXDATA = 0x3018
    ################################################################


    ################################################################
    # 1) Escribir "david" 5 veces en RAM_SRC = 0x2000
    ################################################################

    lui  x10, 0x2          # x10 = 0x2000
    addi x11, x0, 5        # 5 repeticiones

write_david_loop:
    addi x5, x0, 0x64      # 'd'
    sb   x5, 0(x10)

    addi x5, x0, 0x61      # 'a'
    sb   x5, 1(x10)

    addi x5, x0, 0x76      # 'v'
    sb   x5, 2(x10)

    addi x5, x0, 0x69      # 'i'
    sb   x5, 3(x10)

    addi x5, x0, 0x64      # 'd'
    sb   x5, 4(x10)

    addi x10, x10, 5
    addi x11, x11, -1
    bne  x11, x0, write_david_loop


    ################################################################
    # 2) Leer RAM_SRC y copiar a RAM_COPY = 0x2040
    ################################################################

    lui  x10, 0x2
    addi x10, x10, 0x000   # x10 = 0x2000 RAM_SRC

    lui  x12, 0x2
    addi x12, x12, 0x040   # x12 = 0x2040 RAM_COPY

    addi x11, x0, 25       # 25 bytes

copy_ram_loop:
    lbu  x5, 0(x10)
    sb   x5, 0(x12)

    addi x10, x10, 1
    addi x12, x12, 1
    addi x11, x11, -1
    bne  x11, x0, copy_ram_loop


    ################################################################
    # 3) Enviar RAM_COPY por UART TX,
    #    recibir por UART RX,
    #    guardar recibido en RAM_RX = 0x2080
    ################################################################

    lui  x10, 0x2
    addi x10, x10, 0x040   # x10 = 0x2040 RAM_COPY

    lui  x12, 0x2
    addi x12, x12, 0x080   # x12 = 0x2080 RAM_RX

    lui  x13, 0x3
    addi x13, x13, 0x010   # x13 = 0x3010 UART_TXDATA

    lui  x14, 0x3
    addi x14, x14, 0x014   # x14 = 0x3014 UART_STATUS

    lui  x15, 0x3
    addi x15, x15, 0x018   # x15 = 0x3018 UART_RXDATA

    addi x11, x0, 25       # 25 bytes

uart_tx_rx_loop:
    # leer byte desde RAM_COPY
    lbu  x5, 0(x10)

    # esperar TX ready
    jal  x1, wait_tx_ready

    # escribir byte al TX
    # tu UART toma wdata[7:0] y exige be[0] = 1
    sw   x5, 0(x13)

    # esperar RX ready
    jal  x1, wait_rx_ready

    # leer RXDATA
    lw   x6, 0(x15)
    andi x6, x6, 255

    # guardar byte recibido en RAM_RX
    sb   x6, 0(x12)

    addi x10, x10, 1
    addi x12, x12, 1
    addi x11, x11, -1
    bne  x11, x0, uart_tx_rx_loop


    ################################################################
    # 4) Verificar que RAM_RX = david 5 veces
    ################################################################

    lui  x10, 0x2
    addi x10, x10, 0x080   # x10 = 0x2080 RAM_RX

    addi x11, x0, 5        # 5 repeticiones
    addi x20, x0, 0        # errores = 0

verify_loop:
    # d
    lbu  x6, 0(x10)
    addi x7, x0, 0x64
    beq  x6, x7, ok_d1
    addi x20, x20, 1
ok_d1:

    # a
    lbu  x6, 1(x10)
    addi x7, x0, 0x61
    beq  x6, x7, ok_a
    addi x20, x20, 1
ok_a:

    # v
    lbu  x6, 2(x10)
    addi x7, x0, 0x76
    beq  x6, x7, ok_v
    addi x20, x20, 1
ok_v:

    # i
    lbu  x6, 3(x10)
    addi x7, x0, 0x69
    beq  x6, x7, ok_i
    addi x20, x20, 1
ok_i:

    # d
    lbu  x6, 4(x10)
    addi x7, x0, 0x64
    beq  x6, x7, ok_d2
    addi x20, x20, 1
ok_d2:

    addi x10, x10, 5
    addi x11, x11, -1
    bne  x11, x0, verify_loop


    ################################################################
    # 5) Guardar resultado
    ################################################################

    lui  x30, 0x2
    addi x30, x30, 0x100   # x30 = 0x2100

    sw   x20, 0(x30)       # RAM[0x2100] = errores

    bne  x20, x0, fail

pass:
    addi x21, x0, 1
    sw   x21, 4(x30)       # RAM[0x2104] = 1
    jal  x0, done

fail:
    addi x21, x0, 0xEE
    sw   x21, 4(x30)       # RAM[0x2104] = 0xEE

done:
    jal  x0, done


####################################################################
# wait_tx_ready
# UART_STATUS bit 0 = tx_ready
# x14 = UART_STATUS = 0x3014
####################################################################
wait_tx_ready:
    lw   x6, 0(x14)
    andi x6, x6, 1
    beq  x6, x0, wait_tx_ready
    jalr x0, 0(x1)


####################################################################
# wait_rx_ready
# UART_STATUS bit 2 = rx_ready
# x14 = UART_STATUS = 0x3014
####################################################################
wait_rx_ready:
    lw   x6, 0(x14)
    andi x6, x6, 4
    beq  x6, x0, wait_rx_ready
    jalr x0, 0(x1)