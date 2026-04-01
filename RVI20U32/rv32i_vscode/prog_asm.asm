
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00500093          	addi	x1,x0,5
   4:	00700113          	addi	x2,x0,7
   8:	002081b3          	add	x3,x1,x2
   c:	40110233          	sub	x4,x2,x1
  10:	0020f2b3          	and	x5,x1,x2
  14:	0020e333          	or	x6,x1,x2

00000018 <end>:
  18:	0000006f          	jal	x0,18 <end>
