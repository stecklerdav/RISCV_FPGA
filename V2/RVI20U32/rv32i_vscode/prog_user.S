.section .text.start
.global _start

_start:
    /* GPIO base */
    li t0, 0x80003000

    /* GPIO_DIR = 0b00000011
       bit0 = LED0 salida
       bit1 = LED1 salida
    */
    li t1, 0x00000003
    sw t1, 8(t0)

main_loop:
    /* Leer GPIO_IN */
    lw t2, 4(t0)

    /* Aislar SW1 = bit0 */
    andi t2, t2, 0x01

    /* Si SW1 == 0, apagar LEDs */
    beq t2, x0, switch_off

switch_on:
    /* LED0 = 1, LED1 = 1 */
    li t3, 0x00000003
    sw t3, 0(t0)

    j main_loop

switch_off:
    /* LED0 = 0, LED1 = 0 */
    li t3, 0x00000000
    sw t3, 0(t0)

    j main_loop