
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00000093          	addi	x1,x0,0
   4:	00500113          	addi	x2,x0,5
   8:	0000a283          	lw	x5,0(x1)
   c:	00228333          	add	x6,x5,x2
  10:	00100393          	addi	x7,x0,1

00000014 <done>:
  14:	0000006f          	jal	x0,14 <done>
