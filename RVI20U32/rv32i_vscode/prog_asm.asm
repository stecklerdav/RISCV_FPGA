
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00900093          	addi	x1,x0,9
   4:	00108133          	add	x2,x1,x1
   8:	00110193          	addi	x3,x2,1

0000000c <done>:
   c:	0000006f          	jal	x0,c <done>
