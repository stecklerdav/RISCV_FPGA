.option norvc
.section .text.start
.global _start

.equ RAM_BASE,      0x00002000
.equ GPIO_BASE,     0x00003000
.equ UART_BASE,     0x00003010
.equ TIMER_BASE,    0x00003020

.equ GPIO_OUT,      0x00
.equ GPIO_DIR,      0x08

.equ UART_TXDATA,   0x00
.equ UART_STATUS,   0x04
.equ UART_RXDATA,   0x08

.equ TIMER_COUNT,   0x00

_start:
    /* ============================= */
    /* INIT BASES                    */
    /* ============================= */

    lui x1,  %hi(RAM_BASE)
    addi x1, x1, %lo(RAM_BASE)

    lui x2,  %hi(GPIO_BASE)
    addi x2, x2, %lo(GPIO_BASE)

    lui x3,  %hi(UART_BASE)
    addi x3, x3, %lo(UART_BASE)

    lui x4,  %hi(TIMER_BASE)
    addi x4, x4, %lo(TIMER_BASE)

    /* ============================= */
    /* GPIO DIR = 0xFF               */
    /* ============================= */

    addi x5, x0, 0xFF
    sw   x5, GPIO_DIR(x2)

    /* ============================= */
    /* RAM TEST + LOAD USE HAZARD    */
    /* ============================= */

    li   x10, 0x11223344
    sw   x10, 0(x1)

    lw   x11, 0(x1)
    addi x12, x11, 1          /* load-use inmediato */
    sw   x12, 4(x1)

    lw   x13, 4(x1)
    xor  x14, x13, x12
    sw   x14, 8(x1)           /* debe quedar 0 */

    /* ============================= */
    /* BYTE/HALF/WORD STORE TEST     */
    /* ============================= */

    li   x15, 0xAABBCCDD
    sw   x15, 16(x1)

    li   x16, 0x00000055
    sb   x16, 17(x1)

    lw   x17, 16(x1)
    sw   x17, 20(x1)

    li   x18, 0x00001234
    sh   x18, 22(x1)

    lw   x19, 20(x1)
    sw   x19, 24(x1)

    /* ============================= */
    /* GPIO MMIO WRITE STRESS        */
    /* ============================= */

    li   x20, 0x01
    sw   x20, GPIO_OUT(x2)

    li   x20, 0x02
    sw   x20, GPIO_OUT(x2)

    li   x20, 0x04
    sw   x20, GPIO_OUT(x2)

    li   x20, 0x08
    sw   x20, GPIO_OUT(x2)

    li   x20, 0x10
    sw   x20, GPIO_OUT(x2)

    li   x20, 0x20
    sw   x20, GPIO_OUT(x2)

    li   x20, 0x40
    sw   x20, GPIO_OUT(x2)

    li   x20, 0x80
    sw   x20, GPIO_OUT(x2)

    /* ============================= */
    /* GPIO READ + LOAD USE          */
    /* ============================= */

    lw   x21, GPIO_OUT(x2)
    addi x22, x21, 1
    sw   x22, 28(x1)

    /* ============================= */
    /* TIMER READ STRESS             */
    /* ============================= */

    lw   x23, TIMER_COUNT(x4)
    addi x24, x23, 5
    sw   x24, 32(x1)

    lw   x25, TIMER_COUNT(x4)
    sub  x26, x25, x23
    sw   x26, 36(x1)

    /* ============================= */
    /* UART POLLING TX               */
    /* Envia "STALL_OK\n"            */
    /* ============================= */

send_S:
    lw   x6, UART_STATUS(x3)
    andi x6, x6, 1
    beq  x6, x0, send_S
    li   x7, 'S'
    sw   x7, UART_TXDATA(x3)

send_T:
    lw   x6, UART_STATUS(x3)
    andi x6, x6, 1
    beq  x6, x0, send_T
    li   x7, 'T'
    sw   x7, UART_TXDATA(x3)

send_A:
    lw   x6, UART_STATUS(x3)
    andi x6, x6, 1
    beq  x6, x0, send_A
    li   x7, 'A'
    sw   x7, UART_TXDATA(x3)

send_L1:
    lw   x6, UART_STATUS(x3)
    andi x6, x6, 1
    beq  x6, x0, send_L1
    li   x7, 'L'
    sw   x7, UART_TXDATA(x3)

send_L2:
    lw   x6, UART_STATUS(x3)
    andi x6, x6, 1
    beq  x6, x0, send_L2
    li   x7, 'L'
    sw   x7, UART_TXDATA(x3)

send_US:
    lw   x6, UART_STATUS(x3)
    andi x6, x6, 1
    beq  x6, x0, send_US
    li   x7, '_'
    sw   x7, UART_TXDATA(x3)

send_O:
    lw   x6, UART_STATUS(x3)
    andi x6, x6, 1
    beq  x6, x0, send_O
    li   x7, 'O'
    sw   x7, UART_TXDATA(x3)

send_K:
    lw   x6, UART_STATUS(x3)
    andi x6, x6, 1
    beq  x6, x0, send_K
    li   x7, 'K'
    sw   x7, UART_TXDATA(x3)

send_NL:
    lw   x6, UART_STATUS(x3)
    andi x6, x6, 1
    beq  x6, x0, send_NL
    li   x7, 10
    sw   x7, UART_TXDATA(x3)

    /* ============================= */
    /* SIGNATURE FINAL               */
    /* ============================= */

    li   x30, 0xCAFE1234
    sw   x30, 124(x1)

done:
    j done