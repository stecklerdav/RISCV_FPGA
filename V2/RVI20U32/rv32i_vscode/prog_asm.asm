
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	000030b7          	lui	x1,0x3
   4:	00600113          	addi	x2,x0,6
   8:	0020a423          	sw	x2,8(x1) # 3008 <__ram_end+0x8>

0000000c <loop>:
   c:	0040a183          	lw	x3,4(x1)
  10:	00000013          	addi	x0,x0,0
  14:	00000013          	addi	x0,x0,0
  18:	0011f213          	andi	x4,x3,1
  1c:	00020863          	beq	x4,x0,2c <switch_off>

00000020 <switch_on>:
  20:	00200293          	addi	x5,x0,2
  24:	0050a023          	sw	x5,0(x1)
  28:	fe5ff06f          	jal	x0,c <loop>

0000002c <switch_off>:
  2c:	00400293          	addi	x5,x0,4
  30:	0050a023          	sw	x5,0(x1)
  34:	fd9ff06f          	jal	x0,c <loop>
