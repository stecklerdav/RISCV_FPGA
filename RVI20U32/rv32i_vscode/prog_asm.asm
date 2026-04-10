
  prog_asm.elf:     file format elf32-littleriscv


  Disassembly of section .text:

  00000000 <__text_start>:
    0:	00500093          	addi	x1,x0,5
    4:	00500113          	addi	x2,x0,5
    8:	00208c63          	beq	x1,x2,20 <target>
    c:	00a00513          	addi	x10,x0,10
    10:	00b00593          	addi	x11,x0,11
    14:	00c00613          	addi	x12,x0,12
    18:	00d00693          	addi	x13,x0,13
    1c:	00e00713          	addi	x14,x0,14

  00000020 <target>:
    20:	01a00a13          	addi	x20,x0,26
    24:	01b00a93          	addi	x21,x0,27
    28:	01c00b13          	addi	x22,x0,28
    2c:	01d00b93          	addi	x23,x0,29
    30:	01e00c13          	addi	x24,x0,30

  00000034 <done>:
    34:	0000006f          	jal	x0,34 <done>
