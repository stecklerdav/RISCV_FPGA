.global _start
.text

_start:
    addi x1, x0, 16
    addi x2, x0, 100
    addi x3, x0, 7

    # 1) ALU forwarding
    addi x4, x1, 1
    add  x5, x4, x3
    add  x6, x5, x5
    sub  x7, x6, x5

    # 2) prioridad forwarding mismo rd
    addi x8, x0, 1
    addi x8, x8, 1
    addi x8, x8, 1
    add  x9, x8, x0

    # 3) store-data forwarding desde ALU
    addi x10, x0, 55
    sw   x10, 4(x1)
    lw   x11, 4(x1)

    # 4) load-use ALU
    add  x12, x11, x11

    # 5) load-use hacia store_data
    lw   x14, 4(x1)
    sw   x14, 8(x1)
    lw   x13, 8(x1)

    # 6) load-use usando load como base address
    addi x15, x0, 32
    sw   x15, 16(x1)
    lw   x16, 16(x1)
    lw   x17, 0(x16)

    # 7) branch tomado debe hacer flush
    addi x18, x0, 1
    beq  x18, x18, branch_ok
    addi x18, x0, 99
    addi x18, x0, 88

branch_ok:
    # 8) branch no tomado
    addi x19, x0, 5
    bne  x19, x19, branch_bad
    addi x19, x19, 1

    # 9) jal con flush y PC+4
    jal  x20, jal_target
    addi x21, x0, 99

jal_target:
    addi x21, x0, 21

    # 10) jalr con base calculada por auipc/addi
    auipc x24, 0
    addi  x24, x24, 16
    jalr  x22, 0(x24)
    addi  x23, x0, 99

jalr_target:
    addi x23, x0, 23

    # 11) x0 nunca escribe
    addi x0, x0, 123
    addi x25, x0, 5

    # 12) shifts y comparaciones
    addi x26, x0, 1
    slli x26, x26, 3
    srli x27, x26, 1
    slt  x28, x27, x26
    sltu x29, x26, x27

    # 13) AND/OR/XOR forwarding
    addi x30, x0, 15
    xor  x31, x30, x30
    or   x30, x31, x30
    and  x31, x30, x31

done:
    jal x0, done

branch_bad:
    addi x19, x0, 99
    jal x0, done