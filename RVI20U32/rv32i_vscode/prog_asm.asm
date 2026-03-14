
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	06400093          	addi	x1,x0,100
   4:	00500113          	addi	x2,x0,5
   8:	0020a023          	sw	x2,0(x1)
   c:	0000a183          	lw	x3,0(x1)
  10:	00000013          	addi	x0,x0,0
  14:	00000013          	addi	x0,x0,0
  18:	00218233          	add	x4,x3,x2
  1c:	00000013          	addi	x0,x0,0
  20:	00000013          	addi	x0,x0,0
  24:	00320863          	beq	x4,x3,34 <end>
  28:	00000013          	addi	x0,x0,0
  2c:	00000013          	addi	x0,x0,0
  30:	06300293          	addi	x5,x0,99

00000034 <end>:
  34:	00700313          	addi	x6,x0,7
