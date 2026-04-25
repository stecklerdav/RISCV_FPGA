
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00500093          	addi	x1,x0,5
   4:	00400113          	addi	x2,x0,4
   8:	002081b3          	add	x3,x1,x2
   c:	00118233          	add	x4,x3,x1
  10:	402202b3          	sub	x5,x4,x2
  14:	00209333          	sll	x6,x1,x2
  18:	005303b3          	add	x7,x6,x5
  1c:	00a00413          	addi	x8,x0,10
  20:	000284b3          	add	x9,x5,x0
  24:	00848463          	beq	x9,x8,2c <beq_ok>
  28:	06300513          	addi	x10,x0,99

0000002c <beq_ok>:
  2c:	00100593          	addi	x11,x0,1
  30:	00700613          	addi	x12,x0,7
  34:	00060693          	addi	x13,x12,0
  38:	02c69063          	bne	x13,x12,58 <bne_fail>
  3c:	00200713          	addi	x14,x0,2
  40:	002087b3          	add	x15,x1,x2
  44:	00900813          	addi	x16,x0,9
  48:	01078463          	beq	x15,x16,50 <branch2_ok>
  4c:	04d00893          	addi	x17,x0,77

00000050 <branch2_ok>:
  50:	00300913          	addi	x18,x0,3

00000054 <done>:
  54:	0000006f          	jal	x0,54 <done>

00000058 <bne_fail>:
  58:	05800993          	addi	x19,x0,88
  5c:	ff9ff06f          	jal	x0,54 <done>
