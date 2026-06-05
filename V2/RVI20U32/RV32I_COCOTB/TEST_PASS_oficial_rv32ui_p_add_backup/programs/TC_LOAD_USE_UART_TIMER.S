.option norvc
.section .text
.global _start

.equ RAM_BASE,   0x00002000
.equ GPIO_BASE,  0x00003000
.equ UART_BASE,  0x00003010
.equ TIMER_BASE, 0x00003020

_start:
    lui  x1, 0x2          # x1 = 0x00002000 RAM_BASE

# ============================================================
# TEST 1: LOAD-USE directo
# RAM[0] = 0x11
# lw x5
# add x6,x5,x5 debe usar stall/forward correcto
# resultado esperado RAM[1] = 0x22
# ============================================================

    addi x5, x0, 0x11
    sw   x5, 0(x1)

    lw   x5, 0(x1)
    add  x6, x5, x5
    sw   x6, 4(x1)

# ============================================================
# TEST 2: LOAD-USE con rs2
# RAM[2] esperado = 0x33
# ============================================================

    lw   x7, 0(x1)
    add  x8, x7, x6
    sw   x8, 8(x1)

# ============================================================
# TEST 3: LOAD seguido de STORE usando el dato cargado
# Debe validar forwarding/stall hacia store-data
# RAM[3] esperado = 0x11
# ============================================================

    lw   x9, 0(x1)
    sw   x9, 12(x1)

# ============================================================
# TEST 4: cadena load-use fuerte
# x10 = 0x22
# x11 = 0x44
# RAM[4] esperado = 0x44
# ============================================================

    lw   x10, 4(x1)
    add  x11, x10, x10
    sw   x11, 16(x1)

# ============================================================
# TEST 5: branch usando valor cargado
# si load-use/branch funciona, guarda 0x77 en RAM[5]
# ============================================================

    lw   x12, 0(x1)
    addi x13, x0, 0x11
    beq  x12, x13, branch_ok

branch_fail:
    addi x14, x0, 0x55
    sw   x14, 20(x1)
    jal  x0, after_branch

branch_ok:
    addi x14, x0, 0x77
    sw   x14, 20(x1)

after_branch:

# ============================================================
# TEST 6: GPIO MMIO básico
# Escribe 0xA5 en GPIO_BASE
# ============================================================

    lui  x2, 0x3          # x2 = 0x00003000 GPIO_BASE
    addi x15, x0, 0xA5
    sw   x15, 0(x2)

# ============================================================
# TEST 7: UART MMIO básico
# UART_BASE = 0x3010
# Escribe 'O' 'K' '\n'
# ============================================================

    addi x3, x2, 0x10     # x3 = UART_BASE

    addi x16, x0, 0x4F    # 'O'
    sw   x16, 0(x3)

    addi x16, x0, 0x4B    # 'K'
    sw   x16, 0(x3)

    addi x16, x0, 0x0A    # '\n'
    sw   x16, 0(x3)

# ============================================================
# TEST 8: TIMER MMIO read
# TIMER_BASE = 0x3020
# Lee timer y guarda valor en RAM[6]
# ============================================================

    addi x4, x2, 0x20     # x4 = TIMER_BASE
    lw   x17, 0(x4)
    sw   x17, 24(x1)

# ============================================================
# SIGNATURE FINAL
# RAM[7] = 0xCAFE0001
# ============================================================

    lui  x18, 0xCAFE0
    addi x18, x18, 1
    sw   x18, 28(x1)

loop:
    jal x0, loop
