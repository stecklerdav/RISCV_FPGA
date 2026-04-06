
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00a00093          	addi	x1,x0,10
   4:	01400113          	addi	x2,x0,20
   8:	002081b3          	add	x3,x1,x2
   c:	00118213          	addi	x4,x3,1

00000010 <done>:
  10:	0000006f          	jal	x0,10 <done>
