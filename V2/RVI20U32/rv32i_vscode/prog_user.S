

.option norvc
.section .text.start
.globl _start
.align 2

_start:
    # ============================================================
    # BASES
    # x1 = base A = 64
    # x2 = base B = 128
    # x3 = base C = 192
    # x30 = fail code
    # x31 = pass signature
    # ============================================================

    addi x1,  x0, 64
    addi x2,  x0, 128
    addi x3,  x0, 192
    addi x30, x0, 0
    addi x31, x0, 0

    # ============================================================
    # T01: EX/MEM forwarding hacia rs1 y rs2
    # addi -> add inmediato
    # ============================================================

    addi x30, x0, 1

    addi x10, x0, 5
    add  x11, x10, x10       # x11 = 10, necesita forward x10 en rs1/rs2

    addi x4, x0, 10
    bne  x11, x4, fail

    # ============================================================
    # T02: forwarding encadenado
    # add -> addi -> add
    # ============================================================

    addi x30, x0, 2

    addi x12, x11, 3         # x12 = 13, usa x11 recién producido
    add  x13, x12, x11       # x13 = 23, mezcla forward reciente + viejo

    addi x4, x0, 23
    bne  x13, x4, fail

    # ============================================================
    # T03: prioridad de forwarding MEM sobre WB
    # dos escrituras consecutivas al mismo rd
    # el consumidor debe tomar el valor más nuevo
    # ============================================================

    addi x30, x0, 3

    addi x14, x0, 1
    addi x14, x14, 1         # x14 = 2
    add  x15, x14, x0        # debe ver 2, no 1

    addi x4, x0, 2
    bne  x15, x4, fail

    # ============================================================
    # T04: cadena x = x + 1 repetida
    # prueba forward sobre el mismo registro
    # ============================================================

    addi x30, x0, 4

    addi x16, x0, 10
    addi x16, x16, 1         # 11
    addi x16, x16, 1         # 12
    addi x16, x16, 1         # 13

    addi x4, x0, 13
    bne  x16, x4, fail

    # ============================================================
    # T05: store data forwarding
    # addi x10 -> sw x10 inmediato
    # Si no hay forward_store, guarda basura
    # ============================================================

    addi x30, x0, 5

    addi x10, x0, 25
    sw   x10, 0(x1)          # MEM[64] = 25, store data debe forwardear

    lw   x11, 0(x1)
    addi x4, x0, 25
    bne  x11, x4, fail

    # ============================================================
    # T06: load-use hazard hacia ALU rs1
    # lw -> addi inmediato
    # Debe insertar 1 bubble y luego forwardear
    # ============================================================

    addi x30, x0, 6

    lw   x12, 0(x1)
    addi x13, x12, 7         # x13 = 32

    addi x4, x0, 32
    bne  x13, x4, fail

    # ============================================================
    # T07: load-use hazard hacia ALU rs2
    # lw alimenta rs2 de add
    # ============================================================

    addi x30, x0, 7

    addi x14, x0, 8
    lw   x15, 0(x1)
    add  x16, x14, x15       # x16 = 8 + 25 = 33

    addi x4, x0, 33
    bne  x16, x4, fail

    # ============================================================
    # T08: load-use hazard hacia STORE DATA
    # lw -> sw inmediato usando el dato cargado como rs2
    # ============================================================

    addi x30, x0, 8

    lw   x17, 0(x1)
    sw   x17, 4(x1)          # MEM[68] = 25

    lw   x18, 4(x1)
    addi x4, x0, 25
    bne  x18, x4, fail

    # ============================================================
    # T09: load-use hazard hacia dirección de STORE
    # lw carga una dirección, sw la usa como rs1
    # ============================================================

    addi x30, x0, 9

    addi x5, x0, 128
    sw   x5, 8(x1)           # MEM[72] = 128

    lw   x19, 8(x1)          # x19 = 128
    sw   x13, 0(x19)         # MEM[128] = x13 = 32

    lw   x20, 0(x2)
    addi x4, x0, 32
    bne  x20, x4, fail

    # ============================================================
    # T10: branch compare forwarding desde ALU
    # addi -> beq inmediato
    # ============================================================

    addi x30, x0, 10

    addi x21, x0, 44
    addi x22, x21, 0

    beq  x22, x21, T10_OK
    jal  x0, fail

T10_OK:

    # ============================================================
    # T11: branch compare después de load
    # lw -> beq inmediato
    # Debe detectar load-use hacia branch
    # ============================================================

    addi x30, x0, 11

    addi x23, x0, 77
    sw   x23, 12(x1)

    lw   x24, 12(x1)
    beq  x24, x23, T11_OK
    jal  x0, fail

T11_OK:

    # ============================================================
    # T12: branch taken flush
    # Las dos instrucciones wrong-path NO deben escribir
    # ============================================================

    addi x30, x0, 12

    addi x25, x0, 0
    addi x26, x0, 0

    addi x4, x0, 1
    addi x5, x0, 1
    beq  x4, x5, T12_OK

    addi x25, x0, 111        # WRONG PATH
    addi x26, x0, 112        # WRONG PATH

T12_OK:
    bne  x25, x0, fail
    bne  x26, x0, fail

    # ============================================================
    # T13: branch taken con wrong-path load/use
    # Si el flush está mal, puede activar hazard falso o escribir x25
    # ============================================================

    addi x30, x0, 13

    addi x25, x0, 0

    addi x4, x0, 2
    addi x5, x0, 2
    beq  x4, x5, T13_OK

    lw   x6, 0(x1)           # WRONG PATH
    add  x25, x6, x6         # WRONG PATH

T13_OK:
    bne  x25, x0, fail

    # ============================================================
    # T14: JAL flush + link
    # x27 debe recibir PC+4
    # wrong-path no debe escribir
    # ============================================================

    addi x30, x0, 14

    addi x25, x0, 0
    addi x26, x0, 0

    jal  x27, T14_JAL_OK
    addi x25, x0, 113        # WRONG PATH
    addi x26, x0, 114        # WRONG PATH

T14_JAL_OK:
    auipc x4, 0
    addi  x4, x4, -8         # esperado: link = PC actual - 8

    bne   x27, x4, fail
    bne   x25, x0, fail
    bne   x26, x0, fail

    # ============================================================
    # T15: JALR flush + link + clear bit0
    # target se carga con bit0 = 1
    # jalr debe limpiar bit0
    # ============================================================

    addi x30, x0, 15

    addi x25, x0, 0
    addi x26, x0, 0

    auipc x5, 0
    addi  x5, x5, 21         # target = T15_JALR_OK + 1
    jalr  x28, 0(x5)         # debe saltar a T15_JALR_OK

    addi x25, x0, 115        # WRONG PATH
    addi x26, x0, 116        # WRONG PATH

T15_JALR_OK:
    auipc x6, 0
    addi  x6, x6, -8         # esperado: link = PC actual - 8

    bne   x28, x6, fail
    bne   x25, x0, fail
    bne   x26, x0, fail

    # ============================================================
    # T16: x0 protection
    # Escrituras a x0 deben ignorarse
    # ============================================================

    addi x30, x0, 16

    addi x0, x0, 99
    add  x4, x0, x0

    bne  x4, x0, fail

    # ============================================================
    # T17: falso rs2 en instrucciones I-type
    # Si el forwarding B no está bien gated por op_b_sel,
    # un addi podría tomar un valor forwardeado en vez del inmediato.
    # ============================================================

    addi x30, x0, 17

    addi x7, x0, 99
    addi x8, x0, 7           # imm[4:0] = 7, no debe usar x7 como rs2

    addi x4, x0, 7
    bne  x8, x4, fail

    # ============================================================
    # T18: shifts inmediatos con forwarding
    # ============================================================

    addi x30, x0, 18

    addi x9,  x0, 1
    slli x10, x9, 5          # x10 = 32
    srli x11, x10, 2         # x11 = 8
    srai x12, x10, 1         # x12 = 16

    addi x4, x0, 32
    bne  x10, x4, fail

    addi x4, x0, 8
    bne  x11, x4, fail

    addi x4, x0, 16
    bne  x12, x4, fail

    # ============================================================
    # T19: shift aritmético negativo
    # ============================================================

    addi x30, x0, 19

    addi x13, x0, -8
    srai x14, x13, 1         # -8 >> 1 = -4

    addi x4, x0, -4
    bne  x14, x4, fail

    # ============================================================
    # T20: shifts por registro
    # sll/srl/sra con dependencia en shamt
    # ============================================================

    addi x30, x0, 20

    addi x15, x0, 1
    addi x16, x0, 5

    sll  x17, x15, x16       # 1 << 5 = 32
    srl  x18, x17, x16       # 32 >> 5 = 1

    addi x19, x0, -32
    sra  x20, x19, x16       # -32 >> 5 = -1

    addi x4, x0, 32
    bne  x17, x4, fail

    addi x4, x0, 1
    bne  x18, x4, fail

    addi x4, x0, -1
    bne  x20, x4, fail

    # ============================================================
    # T21: slt / sltu signed vs unsigned
    # x21 = -1
    # signed: -1 < 0 = true
    # unsigned: 0xffffffff < 0 = false
    # ============================================================

    addi x30, x0, 21

    addi x21, x0, -1

    slt  x22, x21, x0        # 1
    sltu x23, x21, x0        # 0
    sltu x24, x0,  x21       # 1

    addi x4, x0, 1
    bne  x22, x4, fail

    bne  x23, x0, fail

    addi x4, x0, 1
    bne  x24, x4, fail

    # ============================================================
    # T22: branch signed/unsigned taken
    # ============================================================

    addi x30, x0, 22

    addi x4, x0, -1
    addi x5, x0, 1

    blt  x4, x5, T22_A_OK
    jal  x0, fail

T22_A_OK:
    bge  x5, x4, T22_B_OK
    jal  x0, fail

T22_B_OK:
    bltu x5, x4, T22_C_OK    # unsigned: 1 < 0xffffffff
    jal  x0, fail

T22_C_OK:
    bgeu x4, x5, T22_D_OK    # unsigned: 0xffffffff >= 1
    jal  x0, fail

T22_D_OK:

    # ============================================================
    # T23: branch signed/unsigned NOT taken
    # Si alguno se toma, falla.
    # ============================================================

    addi x30, x0, 23

    beq  x4, x5, fail        # -1 != 1
    bne  x4, x4, fail        # igual, no debe tomar
    blt  x5, x4, fail        # signed: 1 < -1 falso
    bge  x4, x5, fail        # signed: -1 >= 1 falso
    bltu x4, x5, fail        # unsigned: 0xffffffff < 1 falso
    bgeu x5, x4, fail        # unsigned: 1 >= 0xffffffff falso

    # ============================================================
    # T24: operaciones lógicas con forwarding
    # ============================================================

    addi x30, x0, 24

    addi x10, x0, 15         # 0b1111
    addi x11, x0, 10         # 0b1010

    and  x12, x10, x11       # 10
    or   x13, x12, x11       # 10
    xor  x14, x13, x10       # 5

    addi x4, x0, 10
    bne  x12, x4, fail

    addi x4, x0, 10
    bne  x13, x4, fail

    addi x4, x0, 5
    bne  x14, x4, fail

    # ============================================================
    # T25: SW/LW back-to-back con forwarding de store data
    # ============================================================

    addi x30, x0, 25

    sw   x14, 0(x3)          # MEM[192] = 5
    lw   x15, 0(x3)          # x15 = 5
    addi x16, x15, 1         # load-use, x16 = 6
    sw   x16, 4(x3)          # MEM[196] = 6
    lw   x17, 4(x3)          # x17 = 6
    add  x18, x17, x16       # load-use + forward, x18 = 12

    addi x4, x0, 12
    bne  x18, x4, fail

    # ============================================================
    # T26: SB / LB / LBU
    # prueba byte enable, offset byte, sign extension y zero extension
    # ============================================================

    addi x30, x0, 26

    addi x4, x0, -1
    sb   x4, 16(x1)          # MEM[80] byte = 0xff

    lb   x5, 16(x1)          # sign extend -> -1
    lbu  x6, 16(x1)          # zero extend -> 255

    addi x7, x0, -1
    bne  x5, x7, fail

    addi x7, x0, 255
    bne  x6, x7, fail

    # Byte en offset 17
    addi x4, x0, 127
    sb   x4, 17(x1)

    lb   x5, 17(x1)
    addi x7, x0, 127
    bne  x5, x7, fail

    # ============================================================
    # T27: SH / LH / LHU
    # prueba halfword, sign extension y zero extension
    # ============================================================

    addi x30, x0, 27

    addi x4, x0, -1
    sh   x4, 20(x1)          # MEM[84..85] = 0xffff

    lh   x5, 20(x1)          # sign extend -> -1
    lhu  x6, 20(x1)          # zero extend -> 65535

    addi x7, x0, -1
    bne  x5, x7, fail

    lui  x7, 0x10
    addi x7, x7, -1          # x7 = 0x0000ffff
    bne  x6, x7, fail

    # ============================================================
    # T28: LUI + forwarding
    # ============================================================

    addi x30, x0, 28

    lui  x8, 0x1             # x8 = 0x00001000
    srli x9, x8, 12          # x9 = 1

    addi x4, x0, 1
    bne  x9, x4, fail

    # ============================================================
    # T29: mezcla agresiva de dependencias consecutivas
    # ============================================================

    addi x30, x0, 29

    addi x10, x0, 3
    add  x11, x10, x10       # 6
    add  x12, x11, x10       # 9
    addi x13, x12, 1         # 10
    add  x14, x13, x12       # 19
    sub  x15, x14, x10       # 16
    xor  x16, x15, x13       # 16 xor 10 = 26
    and  x17, x16, x14       # 26 & 19 = 18
    or   x18, x17, x10       # 18 | 3 = 19

    addi x4, x0, 19
    bne  x18, x4, fail

    # ============================================================
    # T30: último branch tomado hacia PASS
    # Wrong-path no debe escribir
    # ============================================================

    addi x30, x0, 30

    addi x25, x0, 0
    addi x26, x0, 0

    addi x4, x0, 9
    addi x5, x0, 9

    beq  x4, x5, pass

    addi x25, x0, 200        # WRONG PATH
    addi x26, x0, 201        # WRONG PATH

# ================================================================
# FAIL
# x30 contiene el código del test que falló
# MEM[124] = fail code
# x31 = 0
# ================================================================

fail:
    addi x31, x0, 0
    sw   x30, 60(x1)
    jal  x0, done

# ================================================================
# PASS
# x30 = 0
# x31 = 127
# MEM[124] = 127
# ================================================================

pass:
    bne  x25, x0, fail
    bne  x26, x0, fail

    addi x30, x0, 0
    addi x31, x0, 127
    sw   x31, 60(x1)

done:
    jal  x0, done