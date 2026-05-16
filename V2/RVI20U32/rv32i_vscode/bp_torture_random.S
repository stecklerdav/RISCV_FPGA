/* Generated branch predictor torture test. seed=1234, tests=20 */

.option norvc

.section .text.start, "ax", @progbits
.global _start

_start:
    lui  x8, 0x2              /* x8 = 0x00002000 RAM base */

    addi x7, x0, 0x111
    sw   x7, 0(x8)            /* START signature */

    addi x9, x0, 1
    sw   x9, 128(x8)          /* RAM[0x2080] = 1 for load-use tests */



/* ============================================================
   TEST 1: JAL
   ============================================================ */
    addi x31, x0, 1
    jal  x1, t1_jal_target

    addi x31, x0, 102
    jal  x0, fail

t1_jal_target:
    addi x7, x0, 513
    sw   x7, 4(x8)


/* ============================================================
   TEST 2: BEQ/BNE not-taken pseudoaleatorio
   ============================================================ */
    addi x31, x0, 2
    addi x5,  x0, 3
    addi x6,  x0, 7

t2_nt_loop:
    beq  x5, x6, fail         /* NOT TAKEN */
    addi x5, x5, 1
    bne  x5, x6, t2_nt_loop /* taken hasta x5 == x6 */

    addi x7, x0, 514
    sw   x7, 8(x8)


/* ============================================================
   TEST 3: BEQ/BNE not-taken pseudoaleatorio
   ============================================================ */
    addi x31, x0, 3
    addi x5,  x0, 3
    addi x6,  x0, 7

t3_nt_loop:
    beq  x5, x6, fail         /* NOT TAKEN */
    addi x5, x5, 1
    bne  x5, x6, t3_nt_loop /* taken hasta x5 == x6 */

    addi x7, x0, 515
    sw   x7, 12(x8)


/* ============================================================
   TEST 4: BEQ/BNE not-taken pseudoaleatorio
   ============================================================ */
    addi x31, x0, 4
    addi x5,  x0, 3
    addi x6,  x0, 7

t4_nt_loop:
    beq  x5, x6, fail         /* NOT TAKEN */
    addi x5, x5, 1
    bne  x5, x6, t4_nt_loop /* taken hasta x5 == x6 */

    addi x7, x0, 516
    sw   x7, 16(x8)


/* ============================================================
   TEST 5: JALR
   ============================================================ */
    addi x31, x0, 5

    lui  x10, %hi(t5_jalr_target)
    addi x10, x10, %lo(t5_jalr_target)
    jalr x0, 0(x10)

    addi x31, x0, 503
    jal  x0, fail

t5_jalr_target:
    addi x7, x0, 517
    sw   x7, 20(x8)


/* ============================================================
   TEST 6: BEQ/BNE not-taken pseudoaleatorio
   ============================================================ */
    addi x31, x0, 6
    addi x5,  x0, 3
    addi x6,  x0, 7

t6_nt_loop:
    beq  x5, x6, fail         /* NOT TAKEN */
    addi x5, x5, 1
    bne  x5, x6, t6_nt_loop /* taken hasta x5 == x6 */

    addi x7, x0, 518
    sw   x7, 24(x8)


/* ============================================================
   TEST 7: load-use antes de branch
   ============================================================ */
    addi x31, x0, 7
    addi x5,  x0, 5

t7_lu_loop:
    lw   x12, 128(x8)
    bne  x12, x0, t7_lu_taken

    addi x31, x0, 704
    jal  x0, fail

t7_lu_taken:
    addi x5, x5, -1
    bne  x5, x0, t7_lu_loop

    addi x7, x0, 519
    sw   x7, 28(x8)


/* ============================================================
   TEST 8: BEQ/BNE not-taken pseudoaleatorio
   ============================================================ */
    addi x31, x0, 8
    addi x5,  x0, 3
    addi x6,  x0, 7

t8_nt_loop:
    beq  x5, x6, fail         /* NOT TAKEN */
    addi x5, x5, 1
    bne  x5, x6, t8_nt_loop /* taken hasta x5 == x6 */

    addi x7, x0, 520
    sw   x7, 32(x8)


/* ============================================================
   TEST 9: branches consecutivos
   ============================================================ */
    addi x31, x0, 9
    addi x5, x0, 1
    addi x6, x0, 2

    beq  x5, x6, fail         /* NOT TAKEN */
    beq  x0, x0, t9_ok      /* TAKEN */

    addi x31, x0, 901
    jal  x0, fail

t9_ok:
    addi x7, x0, 521
    sw   x7, 36(x8)


/* ============================================================
   TEST 10: backward loop taken 3 veces y sale
   ============================================================ */
    addi x31, x0, 10
    addi x5,  x0, 4

t10_loop:
    addi x5, x5, -1
    addi x0, x0, 0
    addi x0, x0, 0
    bne  x5, x0, t10_loop

    addi x7, x0, 522
    sw   x7, 40(x8)


/* ============================================================
   TEST 11: BEQ/BNE not-taken pseudoaleatorio
   ============================================================ */
    addi x31, x0, 11
    addi x5,  x0, 3
    addi x6,  x0, 7

t11_nt_loop:
    beq  x5, x6, fail         /* NOT TAKEN */
    addi x5, x5, 1
    bne  x5, x6, t11_nt_loop /* taken hasta x5 == x6 */

    addi x7, x0, 523
    sw   x7, 44(x8)


/* ============================================================
   TEST 12: BEQ/BNE not-taken pseudoaleatorio
   ============================================================ */
    addi x31, x0, 12
    addi x5,  x0, 3
    addi x6,  x0, 7

t12_nt_loop:
    beq  x5, x6, fail         /* NOT TAKEN */
    addi x5, x5, 1
    bne  x5, x6, t12_nt_loop /* taken hasta x5 == x6 */

    addi x7, x0, 524
    sw   x7, 48(x8)


/* ============================================================
   TEST 13: branches consecutivos
   ============================================================ */
    addi x31, x0, 13
    addi x5, x0, 1
    addi x6, x0, 2

    beq  x5, x6, fail         /* NOT TAKEN */
    beq  x0, x0, t13_ok      /* TAKEN */

    addi x31, x0, 1301
    jal  x0, fail

t13_ok:
    addi x7, x0, 525
    sw   x7, 52(x8)


/* ============================================================
   TEST 14: load-use antes de branch
   ============================================================ */
    addi x31, x0, 14
    addi x5,  x0, 11

t14_lu_loop:
    lw   x12, 128(x8)
    bne  x12, x0, t14_lu_taken

    addi x31, x0, 1404
    jal  x0, fail

t14_lu_taken:
    addi x5, x5, -1
    bne  x5, x0, t14_lu_loop

    addi x7, x0, 526
    sw   x7, 56(x8)


/* ============================================================
   TEST 15: JALR
   ============================================================ */
    addi x31, x0, 15

    lui  x10, %hi(t15_jalr_target)
    addi x10, x10, %lo(t15_jalr_target)
    jalr x0, 0(x10)

    addi x31, x0, 1503
    jal  x0, fail

t15_jalr_target:
    addi x7, x0, 527
    sw   x7, 60(x8)


/* ============================================================
   TEST 16: JAL
   ============================================================ */
    addi x31, x0, 16
    jal  x1, t16_jal_target

    addi x31, x0, 1602
    jal  x0, fail

t16_jal_target:
    addi x7, x0, 528
    sw   x7, 64(x8)


/* ============================================================
   TEST 17: backward loop taken 5 veces y sale
   ============================================================ */
    addi x31, x0, 17
    addi x5,  x0, 6

t17_loop:
    addi x5, x5, -1
    addi x0, x0, 0
    addi x0, x0, 0
    bne  x5, x0, t17_loop

    addi x7, x0, 529
    sw   x7, 68(x8)


/* ============================================================
   TEST 18: backward loop taken 6 veces y sale
   ============================================================ */
    addi x31, x0, 18
    addi x5,  x0, 7

t18_loop:
    addi x5, x5, -1
    addi x0, x0, 0
    addi x0, x0, 0
    bne  x5, x0, t18_loop

    addi x7, x0, 530
    sw   x7, 72(x8)


/* ============================================================
   TEST 19: BEQ/BNE not-taken pseudoaleatorio
   ============================================================ */
    addi x31, x0, 19
    addi x5,  x0, 3
    addi x6,  x0, 7

t19_nt_loop:
    beq  x5, x6, fail         /* NOT TAKEN */
    addi x5, x5, 1
    bne  x5, x6, t19_nt_loop /* taken hasta x5 == x6 */

    addi x7, x0, 531
    sw   x7, 76(x8)


/* ============================================================
   TEST 20: JALR
   ============================================================ */
    addi x31, x0, 20

    lui  x10, %hi(t20_jalr_target)
    addi x10, x10, %lo(t20_jalr_target)
    jalr x0, 0(x10)

    addi x31, x0, 2003
    jal  x0, fail

t20_jalr_target:
    addi x7, x0, 532
    sw   x7, 80(x8)


all_ok:
    addi x7, x0, 0x2AA
    sw   x7, 24(x8)

halt:
    jal x0, halt

fail:
    /* x31 contiene fail code */
    sw   x31, 252(x8)         /* RAM[0x20FC] = fail code */
fail_halt:
    jal x0, fail_halt
