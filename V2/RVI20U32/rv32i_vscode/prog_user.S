.section .text
.globl _start

_start:
    # Leer mcause en x30/t5
    csrr x30, mcause

    # NOPs para probar si el problema es hazard CSR-use
    nop
    nop
    nop

    # Si x30 >= 0, falla.
    # Si mcause = 0x80000000, x30 es negativo y NO debe saltar.
    bgez x30, fail

pass:
    li x1, 1
    lui x2, 0x1          # x2 = 0x00001000
    sw x1, 0(x2)         # tohost/remap = 0x00001000
    j pass

fail:
    li x1, 0x539
    lui x2, 0x1          # x2 = 0x00001000
    sw x1, 0(x2)
    j fail