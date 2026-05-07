
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	000030b7          	lui	x1,0x3

00000004 <main_loop>:
   4:	0140a103          	lw	x2,20(x1) # 3014 <__ram_end+0x14>
   8:	00000013          	addi	x0,x0,0
   c:	00000013          	addi	x0,x0,0
  10:	00117113          	andi	x2,x2,1
  14:	00000013          	addi	x0,x0,0
  18:	00000013          	addi	x0,x0,0
  1c:	fe0104e3          	beq	x2,x0,4 <main_loop>
  20:	06400193          	addi	x3,x0,100
  24:	0030a823          	sw	x3,16(x1)

00000028 <wait_a>:
  28:	0140a103          	lw	x2,20(x1)
  2c:	00117113          	andi	x2,x2,1
  30:	fe010ce3          	beq	x2,x0,28 <wait_a>
  34:	06100193          	addi	x3,x0,97
  38:	0030a823          	sw	x3,16(x1)

0000003c <wait_v>:
  3c:	0140a103          	lw	x2,20(x1)
  40:	00117113          	andi	x2,x2,1
  44:	fe010ce3          	beq	x2,x0,3c <wait_v>
  48:	07600193          	addi	x3,x0,118
  4c:	0030a823          	sw	x3,16(x1)

00000050 <wait_i>:
  50:	0140a103          	lw	x2,20(x1)
  54:	00117113          	andi	x2,x2,1
  58:	fe010ce3          	beq	x2,x0,50 <wait_i>
  5c:	06900193          	addi	x3,x0,105
  60:	0030a823          	sw	x3,16(x1)

00000064 <wait_d2>:
  64:	0140a103          	lw	x2,20(x1)
  68:	00117113          	andi	x2,x2,1
  6c:	fe010ce3          	beq	x2,x0,64 <wait_d2>
  70:	06400193          	addi	x3,x0,100
  74:	0030a823          	sw	x3,16(x1)

00000078 <wait_nl>:
  78:	0140a103          	lw	x2,20(x1)
  7c:	00117113          	andi	x2,x2,1
  80:	fe010ce3          	beq	x2,x0,78 <wait_nl>
  84:	00a00193          	addi	x3,x0,10
  88:	0030a823          	sw	x3,16(x1)
  8c:	f79ff06f          	jal	x0,4 <main_loop>
