
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	000032b7          	lui	x5,0x3
   4:	00828293          	addi	x5,x5,8 # 3008 <GPIO_DIR>
   8:	00300113          	addi	x2,x0,3
   c:	0022a023          	sw	x2,0(x5)
  10:	000032b7          	lui	x5,0x3
  14:	00031537          	lui	x10,0x31
  18:	d4050513          	addi	x10,x10,-704 # 30d40 <GPIO_DIR+0x2dd38>

0000001c <loop>:
  1c:	00100113          	addi	x2,x0,1
  20:	0022a023          	sw	x2,0(x5) # 3000 <__ram_end>
  24:	034000ef          	jal	x1,58 <delay>
  28:	00200113          	addi	x2,x0,2
  2c:	0022a023          	sw	x2,0(x5)
  30:	028000ef          	jal	x1,58 <delay>
  34:	000056b7          	lui	x13,0x5
  38:	e2068693          	addi	x13,x13,-480 # 4e20 <GPIO_DIR+0x1e18>
  3c:	00d50533          	add	x10,x10,x13
  40:	000f45b7          	lui	x11,0xf4
  44:	24058593          	addi	x11,x11,576 # f4240 <GPIO_DIR+0xf1238>
  48:	fcb54ae3          	blt	x10,x11,1c <loop>
  4c:	00031537          	lui	x10,0x31
  50:	d4050513          	addi	x10,x10,-704 # 30d40 <GPIO_DIR+0x2dd38>
  54:	fc9ff06f          	jal	x0,1c <loop>

00000058 <delay>:
  58:	00050633          	add	x12,x10,x0

0000005c <dloop>:
  5c:	fff60613          	addi	x12,x12,-1
  60:	fe061ee3          	bne	x12,x0,5c <dloop>
  64:	00008067          	jalr	x0,0(x1)
