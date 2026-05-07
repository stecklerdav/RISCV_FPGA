.section .text.start
.global _start

_start:
    lui x1, 0x3              # x1 = 0x00003000

main_loop:
wait_d:
    lw      x2, 0x14(x1)
    addi    x0, x0, 0
    addi    x0, x0, 0
    andi    x2, x2, 1
    addi    x0, x0, 0
    addi    x0, x0, 0
    beq     x2, x0, wait_d

    addi    x3, x0, 100
    sw      x3, 0x10(x1)
wait_a:
    lw      x2, 0x14(x1)
    andi    x2, x2, 1
    beq     x2, x0, wait_a
    addi    x3, x0, 97       # 'a'
    sw      x3, 0x10(x1)

wait_v:
    lw      x2, 0x14(x1)
    andi    x2, x2, 1
    beq     x2, x0, wait_v
    addi    x3, x0, 118      # 'v'
    sw      x3, 0x10(x1)

wait_i:
    lw      x2, 0x14(x1)
    andi    x2, x2, 1
    beq     x2, x0, wait_i
    addi    x3, x0, 105      # 'i'
    sw      x3, 0x10(x1)

wait_d2:
    lw      x2, 0x14(x1)
    andi    x2, x2, 1
    beq     x2, x0, wait_d2
    addi    x3, x0, 100      # 'd'
    sw      x3, 0x10(x1)

wait_nl:
    lw      x2, 0x14(x1)
    andi    x2, x2, 1
    beq     x2, x0, wait_nl
    addi    x3, x0, 10       # '\n'
    sw      x3, 0x10(x1)

    jal     x0, main_loop