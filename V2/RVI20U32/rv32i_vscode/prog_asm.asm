
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00002537          	lui	x10,0x2
   4:	00500593          	addi	x11,x0,5

00000008 <write_david_loop>:
   8:	06400293          	addi	x5,x0,100
   c:	00550023          	sb	x5,0(x10) # 2000 <__end>
  10:	06100293          	addi	x5,x0,97
  14:	005500a3          	sb	x5,1(x10)
  18:	07600293          	addi	x5,x0,118
  1c:	00550123          	sb	x5,2(x10)
  20:	06900293          	addi	x5,x0,105
  24:	005501a3          	sb	x5,3(x10)
  28:	06400293          	addi	x5,x0,100
  2c:	00550223          	sb	x5,4(x10)
  30:	00550513          	addi	x10,x10,5
  34:	fff58593          	addi	x11,x11,-1
  38:	fc0598e3          	bne	x11,x0,8 <write_david_loop>
  3c:	00002537          	lui	x10,0x2
  40:	00050513          	addi	x10,x10,0 # 2000 <__end>
  44:	00002637          	lui	x12,0x2
  48:	04060613          	addi	x12,x12,64 # 2040 <__end+0x40>
  4c:	01900593          	addi	x11,x0,25

00000050 <copy_ram_loop>:
  50:	00054283          	lbu	x5,0(x10)
  54:	00560023          	sb	x5,0(x12)
  58:	00150513          	addi	x10,x10,1
  5c:	00160613          	addi	x12,x12,1
  60:	fff58593          	addi	x11,x11,-1
  64:	fe0596e3          	bne	x11,x0,50 <copy_ram_loop>
  68:	00002537          	lui	x10,0x2
  6c:	04050513          	addi	x10,x10,64 # 2040 <__end+0x40>
  70:	00002637          	lui	x12,0x2
  74:	08060613          	addi	x12,x12,128 # 2080 <__end+0x80>
  78:	000036b7          	lui	x13,0x3
  7c:	01068693          	addi	x13,x13,16 # 3010 <__ram_end+0x10>
  80:	00003737          	lui	x14,0x3
  84:	01470713          	addi	x14,x14,20 # 3014 <__ram_end+0x14>
  88:	000037b7          	lui	x15,0x3
  8c:	01878793          	addi	x15,x15,24 # 3018 <__ram_end+0x18>
  90:	01900593          	addi	x11,x0,25

00000094 <uart_tx_rx_loop>:
  94:	00054283          	lbu	x5,0(x10)
  98:	0bc000ef          	jal	x1,154 <wait_tx_ready>
  9c:	0056a023          	sw	x5,0(x13)
  a0:	0c4000ef          	jal	x1,164 <wait_rx_ready>
  a4:	0007a303          	lw	x6,0(x15)
  a8:	0ff37313          	andi	x6,x6,255
  ac:	00660023          	sb	x6,0(x12)
  b0:	00150513          	addi	x10,x10,1
  b4:	00160613          	addi	x12,x12,1
  b8:	fff58593          	addi	x11,x11,-1
  bc:	fc059ce3          	bne	x11,x0,94 <uart_tx_rx_loop>
  c0:	00002537          	lui	x10,0x2
  c4:	08050513          	addi	x10,x10,128 # 2080 <__end+0x80>
  c8:	00500593          	addi	x11,x0,5
  cc:	00000a13          	addi	x20,x0,0

000000d0 <verify_loop>:
  d0:	00054303          	lbu	x6,0(x10)
  d4:	06400393          	addi	x7,x0,100
  d8:	00730463          	beq	x6,x7,e0 <ok_d1>
  dc:	001a0a13          	addi	x20,x20,1

000000e0 <ok_d1>:
  e0:	00154303          	lbu	x6,1(x10)
  e4:	06100393          	addi	x7,x0,97
  e8:	00730463          	beq	x6,x7,f0 <ok_a>
  ec:	001a0a13          	addi	x20,x20,1

000000f0 <ok_a>:
  f0:	00254303          	lbu	x6,2(x10)
  f4:	07600393          	addi	x7,x0,118
  f8:	00730463          	beq	x6,x7,100 <ok_v>
  fc:	001a0a13          	addi	x20,x20,1

00000100 <ok_v>:
 100:	00354303          	lbu	x6,3(x10)
 104:	06900393          	addi	x7,x0,105
 108:	00730463          	beq	x6,x7,110 <ok_i>
 10c:	001a0a13          	addi	x20,x20,1

00000110 <ok_i>:
 110:	00454303          	lbu	x6,4(x10)
 114:	06400393          	addi	x7,x0,100
 118:	00730463          	beq	x6,x7,120 <ok_d2>
 11c:	001a0a13          	addi	x20,x20,1

00000120 <ok_d2>:
 120:	00550513          	addi	x10,x10,5
 124:	fff58593          	addi	x11,x11,-1
 128:	fa0594e3          	bne	x11,x0,d0 <verify_loop>
 12c:	00002f37          	lui	x30,0x2
 130:	100f0f13          	addi	x30,x30,256 # 2100 <__end+0x100>
 134:	014f2023          	sw	x20,0(x30)
 138:	000a1863          	bne	x20,x0,148 <fail>

0000013c <pass>:
 13c:	00100a93          	addi	x21,x0,1
 140:	015f2223          	sw	x21,4(x30)
 144:	00c0006f          	jal	x0,150 <done>

00000148 <fail>:
 148:	0ee00a93          	addi	x21,x0,238
 14c:	015f2223          	sw	x21,4(x30)

00000150 <done>:
 150:	0000006f          	jal	x0,150 <done>

00000154 <wait_tx_ready>:
 154:	00072303          	lw	x6,0(x14)
 158:	00137313          	andi	x6,x6,1
 15c:	fe030ce3          	beq	x6,x0,154 <wait_tx_ready>
 160:	00008067          	jalr	x0,0(x1)

00000164 <wait_rx_ready>:
 164:	00072303          	lw	x6,0(x14)
 168:	00437313          	andi	x6,x6,4
 16c:	fe030ce3          	beq	x6,x0,164 <wait_rx_ready>
 170:	00008067          	jalr	x0,0(x1)
