
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	fff00093          	addi	x1,x0,-1
   4:	12345137          	lui	x2,0x12345
   8:	00000197          	auipc	x3,0x0
   c:	00000463          	beq	x0,x0,14 <label_b>
  10:	06300213          	addi	x4,x0,99

00000014 <label_b>:
  14:	008002ef          	jal	x5,1c <label_j>
  18:	05800313          	addi	x6,x0,88

0000001c <label_j>:
  1c:	00700393          	addi	x7,x0,7

00000020 <done>:
  20:	0000006f          	jal	x0,20 <done>
