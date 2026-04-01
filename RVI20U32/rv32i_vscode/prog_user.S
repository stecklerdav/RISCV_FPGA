.section .text.start
.globl _start

_start:
    addi x1, x0, 5        # x1 = 5
    addi x2, x0, 7        # x2 = 7

    add  x3, x1, x2       # instrucción clave para validar ID
    sub  x4, x2, x1       # instrucción clave para validar ID
    and  x5, x1, x2       # instrucción clave para validar ID
    or   x6, x1, x2       # instrucción clave para validar ID

end:
    j end
    