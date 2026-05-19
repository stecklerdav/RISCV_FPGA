.option norvc
.section .text.start
.global _start

.equ RAM_BASE, 0x00002000

_start:
    li   x7, RAM_BASE

    # Firma inicio
    li   x6, 0x111
    sw   x6, 0(x7)

    # Cargar mepc con target
    la   x5, target_ok
    csrrw x0, mepc, x5

    # Leer mepc y guardar
    csrrs x6, mepc, x0
    sw   x6, 4(x7)

    # Ejecutar mret
    mret

bad_path:
    li   x6, 0xBAD
    sw   x6, 8(x7)
    j bad_path

target_ok:
    li   x6, 0x777
    sw   x6, 12(x7)

done:
    j done