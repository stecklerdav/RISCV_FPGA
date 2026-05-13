    .option norvc
    .section .text
    .global _start

_start:
    /*
        RAM_BASE = 0x00002000
        x20 = base RAM

        RAM[0x2000] = status/error
        RAM[0x2004] = progress
        RAM[0x2040] = JAL link value
        RAM[0x2044] = JALR link value
        RAM[0x2048] = JALR odd-target link value
    */

    lui  x20, 0x2              /* x20 = 0x00002000 */

    addi x31, x0, 0
    sw   x31, 0(x20)           /* status = 0 */

    addi x30, x0, 0
    sw   x30, 4(x20)           /* progress = 0 */


/* ============================================================
   TEST 1: BEQ tomado
   ============================================================ */

test_beq_taken:
    addi x31, x0, 1            /* error code = 1 */
    addi x1,  x0, 5
    addi x2,  x0, 5

    beq  x1, x2, beq_taken_ok

    jal  x0, fail              /* ERROR: BEQ debía saltar */

beq_taken_ok:
    addi x30, x0, 1
    sw   x30, 4(x20)


/* ============================================================
   TEST 2: BEQ no tomado
   ============================================================ */

test_beq_not_taken:
    addi x31, x0, 2            /* error code = 2 */
    addi x1,  x0, 5
    addi x2,  x0, 6

    beq  x1, x2, fail          /* ERROR: BEQ no debía saltar */

    addi x30, x0, 2
    sw   x30, 4(x20)


/* ============================================================
   TEST 3: BNE tomado
   ============================================================ */

test_bne_taken:
    addi x31, x0, 3            /* error code = 3 */
    addi x1,  x0, 5
    addi x2,  x0, 6

    bne  x1, x2, bne_taken_ok

    jal  x0, fail              /* ERROR: BNE debía saltar */

bne_taken_ok:
    addi x30, x0, 3
    sw   x30, 4(x20)


/* ============================================================
   TEST 4: BNE no tomado
   ============================================================ */

test_bne_not_taken:
    addi x31, x0, 4            /* error code = 4 */
    addi x1,  x0, 7
    addi x2,  x0, 7

    bne  x1, x2, fail          /* ERROR: BNE no debía saltar */

    addi x30, x0, 4
    sw   x30, 4(x20)


/* ============================================================
   TEST 5: BLT signed tomado
   -1 < 1 debe ser verdadero
   ============================================================ */

test_blt_taken:
    addi x31, x0, 5            /* error code = 5 */
    addi x1,  x0, -1           /* x1 = 0xFFFFFFFF = -1 signed */
    addi x2,  x0, 1

    blt  x1, x2, blt_taken_ok

    jal  x0, fail              /* ERROR: BLT debía saltar */

blt_taken_ok:
    addi x30, x0, 5
    sw   x30, 4(x20)


/* ============================================================
   TEST 6: BLT signed no tomado
   1 < -1 debe ser falso
   ============================================================ */

test_blt_not_taken:
    addi x31, x0, 6            /* error code = 6 */
    addi x1,  x0, 1
    addi x2,  x0, -1

    blt  x1, x2, fail          /* ERROR: BLT no debía saltar */

    addi x30, x0, 6
    sw   x30, 4(x20)


/* ============================================================
   TEST 7: BGE signed tomado
   1 >= -1 debe ser verdadero
   ============================================================ */

test_bge_taken:
    addi x31, x0, 7            /* error code = 7 */
    addi x1,  x0, 1
    addi x2,  x0, -1

    bge  x1, x2, bge_taken_ok

    jal  x0, fail              /* ERROR: BGE debía saltar */

bge_taken_ok:
    addi x30, x0, 7
    sw   x30, 4(x20)


/* ============================================================
   TEST 8: BGE signed no tomado
   -1 >= 1 debe ser falso
   ============================================================ */

test_bge_not_taken:
    addi x31, x0, 8            /* error code = 8 */
    addi x1,  x0, -1
    addi x2,  x0, 1

    bge  x1, x2, fail          /* ERROR: BGE no debía saltar */

    addi x30, x0, 8
    sw   x30, 4(x20)


/* ============================================================
   TEST 9: BLTU unsigned tomado
   1 < 2 debe ser verdadero
   ============================================================ */

test_bltu_taken:
    addi x31, x0, 9            /* error code = 9 */
    addi x1,  x0, 1
    addi x2,  x0, 2

    bltu x1, x2, bltu_taken_ok

    jal  x0, fail              /* ERROR: BLTU debía saltar */

bltu_taken_ok:
    addi x30, x0, 9
    sw   x30, 4(x20)


/* ============================================================
   TEST 10: BLTU unsigned no tomado
   0xFFFFFFFF < 1 unsigned debe ser falso
   ============================================================ */

test_bltu_not_taken:
    addi x31, x0, 10           /* error code = 10 */
    addi x1,  x0, -1           /* x1 = 0xFFFFFFFF unsigned grande */
    addi x2,  x0, 1

    bltu x1, x2, fail          /* ERROR: BLTU no debía saltar */

    addi x30, x0, 10
    sw   x30, 4(x20)


/* ============================================================
   TEST 11: BGEU unsigned tomado
   0xFFFFFFFF >= 1 unsigned debe ser verdadero
   ============================================================ */

test_bgeu_taken:
    addi x31, x0, 11           /* error code = 11 */
    addi x1,  x0, -1           /* x1 = 0xFFFFFFFF */
    addi x2,  x0, 1

    bgeu x1, x2, bgeu_taken_ok

    jal  x0, fail              /* ERROR: BGEU debía saltar */

bgeu_taken_ok:
    addi x30, x0, 11
    sw   x30, 4(x20)


/* ============================================================
   TEST 12: BGEU unsigned no tomado
   1 >= 0xFFFFFFFF unsigned debe ser falso
   ============================================================ */

test_bgeu_not_taken:
    addi x31, x0, 12           /* error code = 12 */
    addi x1,  x0, 1
    addi x2,  x0, -1           /* x2 = 0xFFFFFFFF */

    bgeu x1, x2, fail          /* ERROR: BGEU no debía saltar */

    addi x30, x0, 12
    sw   x30, 4(x20)


/* ============================================================
   TEST 13: JAL con link register
   JAL debe saltar y guardar PC+4 en x10
   ============================================================ */

test_jal:
    addi x31, x0, 13           /* error code = 13 */

    jal  x10, jal_target

    jal  x0, fail              /* ERROR: JAL no saltó */

jal_target:
    sw   x10, 0x40(x20)        /* guardar link de JAL en RAM[0x2040] */

    addi x30, x0, 13
    sw   x30, 4(x20)


/* ============================================================
   TEST 14: JAL x0
   Salto incondicional sin guardar link
   ============================================================ */

test_jal_x0:
    addi x31, x0, 14           /* error code = 14 */
    addi x5,  x0, 55

    jal  x0, jal_x0_target

    jal  x0, fail              /* ERROR: JAL x0 no saltó */

jal_x0_target:
    /*
        x5 debe seguir siendo 55.
        Esto confirma que JAL x0 no escribe link en otro registro.
    */
    addi x6, x0, 55
    bne  x5, x6, fail

    addi x30, x0, 14
    sw   x30, 4(x20)


/* ============================================================
   TEST 15: JALR normal
   Salta a dirección contenida en registro.
   Guarda PC+4 en x11.
   ============================================================ */

test_jalr:
    addi x31, x0, 15           /* error code = 15 */

    lui  x5, %hi(jalr_target)
    addi x5, x5, %lo(jalr_target)

    jalr x11, 0(x5)

    jal  x0, fail              /* ERROR: JALR no saltó */

    .align 2
jalr_target:
    sw   x11, 0x44(x20)        /* guardar link de JALR en RAM[0x2044] */

    addi x30, x0, 15
    sw   x30, 4(x20)


/* ============================================================
   TEST 16: JALR con bit 0 del target en 1
   RISC-V debe hacer:
       target = (rs1 + imm) & 0xFFFFFFFE

   Es decir, limpia el bit 0.
   ============================================================ */

test_jalr_clear_bit0:
    addi x31, x0, 16           /* error code = 16 */

    lui  x5, %hi(jalr_odd_target)
    addi x5, x5, %lo(jalr_odd_target)

    addi x5, x5, 1             /* forzar dirección impar */

    jalr x12, 0(x5)

    jal  x0, fail              /* ERROR: JALR no limpió bit 0 o no saltó */

    .align 2
jalr_odd_target:
    sw   x12, 0x48(x20)        /* guardar link de JALR odd en RAM[0x2048] */

    addi x30, x0, 16
    sw   x30, 4(x20)


/* ============================================================
   PASS
   ============================================================ */

pass:
    lui  x31, 0x12345
    addi x31, x31, 0x678       /* x31 = 0x12345678 */

    sw   x31, 0(x20)           /* RAM[0x2000] = PASS */

pass_loop:
    jal  x0, pass_loop


/* ============================================================
   FAIL
   ============================================================ */

fail:
    /*
        x31 ya contiene el código de error.
        RAM[0x2000] = error code
    */
    sw   x31, 0(x20)

fail_loop:
    jal  x0, fail_loop