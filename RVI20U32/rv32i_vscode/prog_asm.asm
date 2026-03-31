
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00a00513          	addi	x10,x0,10
   4:	00b00593          	addi	x11,x0,11
   8:	00c00613          	addi	x12,x0,12
   c:	00d00693          	addi	x13,x0,13
  10:	00e00713          	addi	x14,x0,14

00000014 <loop>:
  14:	0000006f          	jal	x0,14 <loop>
