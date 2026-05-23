.option norvc
.section .text.start
.global _start

.equ RAM_BASE, 0x00002000

_start:
    lui  t2, 0x2              # t2 = 0x00002000

    la   t0, trap_handler
    csrw mtvec, t0            # mtvec = handler

    li   t1, 0x111
    sw   t1, 0(t2)            # marca antes del ecall

    ecall                     # DEBE generar trap

after_ecall:
    li   t1, 0x777
    sw   t1, 12(t2)           # si vuelve bien, escribe OK

done:
    j done

trap_handler:
    csrr t0, mepc
    sw   t0, 4(t2)            # guardar mepc

    csrr t1, mcause
    sw   t1, 8(t2)            # guardar mcause

    addi t0, t0, 4
    csrw mepc, t0             # saltar después del ecall

    mret