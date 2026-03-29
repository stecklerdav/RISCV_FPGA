
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00500093          	addi	x1,x0,5
   4:	00500113          	addi	x2,x0,5
   8:	00208663          	beq	x1,x2,14 <target>
   c:	00300193          	addi	x3,x0,3
  10:	00400213          	addi	x4,x0,4

00000014 <target>:
  14:	00500293          	addi	x5,x0,5

00000018 <loop>:
  18:	0000006f          	jal	x0,18 <loop>
