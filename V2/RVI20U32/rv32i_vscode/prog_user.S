    .section .text.start
    .globl _start

    _start:
        # -------------------------
        # Base
        # -------------------------
        addi x1, x0, 5          # x1 = 5
        addi x2, x0, 4          # x2 = 4

        # -------------------------
        # Forwarding ALU -> ALU
        # -------------------------
        add  x3, x1, x2         # x3 = 9
        add  x4, x3, x1         # x4 = 14   necesita forward x3
        sub  x5, x4, x2         # x5 = 10   necesita forward x4
        sll  x6, x1, x2         # x6 = 80
        add  x7, x6, x5         # x7 = 90   necesita forward x6/x5

        # -------------------------
        # Forwarding ALU -> branch
        # -------------------------
        addi x8, x0, 10         # x8 = 10
        add  x9, x5, x0         # x9 = 10
        beq  x9, x8, beq_ok     # debe tomar branch por forwarding
        addi x10, x0, 99        # WRONG-PATH, debe quedar 0

    beq_ok:
        addi x11, x0, 1         # x11 = 1

        # -------------------------
        # Forwarding inmediato hacia branch
        # -------------------------
        addi x12, x0, 7         # x12 = 7
        addi x13, x12, 0        # x13 = 7, necesita forward x12
        bne  x13, x12, bne_fail # NO debe tomar
        addi x14, x0, 2         # x14 = 2

        # -------------------------
        # Branch tomado con resultado reciente
        # -------------------------
        add  x15, x1, x2        # x15 = 9
        addi x16, x0, 9         # x16 = 9
        beq  x15, x16, branch2_ok
        addi x17, x0, 77        # WRONG-PATH, debe quedar 0

    branch2_ok:
        addi x18, x0, 3         # x18 = 3

    done:
        jal x0, done

    bne_fail:
        addi x19, x0, 88        # No debe ejecutarse
        jal x0, done