.option norvc
.section .text
.global _start

.equ RAM_BASE,   0x00002000
.equ GPIO_BASE,  0x00003000
.equ UART_BASE,  0x00003010

.equ SIGNATURE_ADDR, 0x00002000
.equ PASS_VALUE,     0xCAFE0001
.equ FAIL_BASE,      0xDEAD0000

_start:
    nop
    nop
    nop

    li s0, RAM_BASE

    // =====================================================
    // TEST 1: ALU + WB básico
    // a0 debe terminar en 42
    // =====================================================

    li t6, 1
    addi a0, zero, 40
    addi a0, a0, 2

    li t0, 42
    bne a0, t0, fail

    // =====================================================
    // TEST 2: STORE / LOAD RAM
    // =====================================================

    li t6, 2
    li t1, 0x12345678
    sw t1, 4(s0)

    lw t2, 4(s0)
    bne t2, t1, fail

    // =====================================================
    // TEST 3: LOAD-USE HAZARD
    // lw seguido inmediatamente de addi
    // =====================================================

    li t6, 3
    lw t2, 4(s0)
    addi t3, t2, 1

    li t4, 0x12345679
    bne t3, t4, fail

    // =====================================================
    // TEST 4: FORWARDING ALU -> ALU
    // =====================================================

    li t6, 4
    addi s1, zero, 7
    addi s2, s1, 5
    addi s3, s2, 9

    li t0, 21
    bne s3, t0, fail

    // =====================================================
    // TEST 5: FORWARDING hacia STORE DATA
    // =====================================================

    li t6, 5
    li t1, 0x55AA00CC
    sw t1, 8(s0)

    lw t2, 8(s0)
    bne t2, t1, fail

    // =====================================================
    // TEST 6: BYTE ENABLE - SB
    // palabra inicial: AABBCCDD
    // SB en offset +1 debe dejar: AABB11DD
    // =====================================================

    li t6, 6
    li t1, 0xAABBCCDD
    sw t1, 12(s0)

    li t2, 0x11
    sb t2, 13(s0)

    lw t3, 12(s0)
    li t4, 0xAABB11DD
    bne t3, t4, fail

    // =====================================================
    // TEST 7: BYTE ENABLE - SH
    // SH en offset +2 debe dejar: 222211DD
    // =====================================================

    li t6, 7
    li t2, 0x2222
    sh t2, 14(s0)

    lw t3, 12(s0)
    li t4, 0x222211DD
    bne t3, t4, fail

    // =====================================================
    // TEST 8: SIGN EXTEND / ZERO EXTEND
    // =====================================================

    li t6, 8
    li t1, 0x80
    sb t1, 16(s0)

    lb t2, 16(s0)
    li t3, 0xFFFFFF80
    bne t2, t3, fail

    lbu t2, 16(s0)
    li t3, 0x00000080
    bne t2, t3, fail

    // =====================================================
    // TEST 9: BRANCH FLUSH
    // Si el flush falla, ejecuta una escritura de error.
    // =====================================================

    li t6, 9
    addi t0, zero, 1
    beq t0, t0, branch_ok

    li t1, 0xDEAD0099
    sw t1, 0(s0)

branch_ok:

    // =====================================================
    // TEST 10: JAL FLUSH
    // =====================================================

    li t6, 10
    jal ra, jal_ok

    li t1, 0xDEAD00AA
    sw t1, 0(s0)

jal_ok:

    // =====================================================
    // TEST 11: GPIO MMIO
    // GPIO_DIR = 0xFF
    // GPIO_OUT = 0xA5
    // =====================================================

    li t6, 11
    li s4, GPIO_BASE

    li t1, 0x000000FF
    sw t1, 8(s4)

    li t1, 0x000000A5
    sw t1, 0(s4)

    // =====================================================
    // TEST 12: UART MMIO WRITE
    // Escribe ASCII 'A' = 0x41
    // =====================================================

    li t6, 12
    li s5, UART_BASE

    li t1, 0x00000041
    sw t1, 0(s5)

    // =====================================================
    // PASS SIGNATURE
    // =====================================================

pass:
    li t0, SIGNATURE_ADDR
    li t1, PASS_VALUE
    sw t1, 0(t0)

pass_loop:
    jal zero, pass_loop

fail:
    li t0, SIGNATURE_ADDR
    li t1, FAIL_BASE
    or t1, t1, t6
    sw t1, 0(t0)

fail_loop:
    jal zero, fail_loop
