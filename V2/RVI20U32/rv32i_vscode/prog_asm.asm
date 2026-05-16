
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	000020b7          	lui	x1,0x2
   4:	00008093          	addi	x1,x1,0 # 2000 <__end>
   8:	00003137          	lui	x2,0x3
   c:	00010113          	addi	x2,x2,0 # 3000 <__ram_end>
  10:	000031b7          	lui	x3,0x3
  14:	01018193          	addi	x3,x3,16 # 3010 <UART_BASE>
  18:	00003237          	lui	x4,0x3
  1c:	02020213          	addi	x4,x4,32 # 3020 <TIMER_BASE>
  20:	0ff00293          	addi	x5,x0,255
  24:	00512423          	sw	x5,8(x2)
  28:	11223537          	lui	x10,0x11223
  2c:	34450513          	addi	x10,x10,836 # 11223344 <TIMER_BASE+0x11220324>
  30:	00a0a023          	sw	x10,0(x1)
  34:	0000a583          	lw	x11,0(x1)
  38:	00158613          	addi	x12,x11,1
  3c:	00c0a223          	sw	x12,4(x1)
  40:	0040a683          	lw	x13,4(x1)
  44:	00c6c733          	xor	x14,x13,x12
  48:	00e0a423          	sw	x14,8(x1)
  4c:	aabbd7b7          	lui	x15,0xaabbd
  50:	cdd78793          	addi	x15,x15,-803 # aabbccdd <TIMER_BASE+0xaabb9cbd>
  54:	00f0a823          	sw	x15,16(x1)
  58:	05500813          	addi	x16,x0,85
  5c:	010088a3          	sb	x16,17(x1)
  60:	0100a883          	lw	x17,16(x1)
  64:	0110aa23          	sw	x17,20(x1)
  68:	00001937          	lui	x18,0x1
  6c:	23490913          	addi	x18,x18,564 # 1234 <__stack_size+0xe34>
  70:	01209b23          	sh	x18,22(x1)
  74:	0140a983          	lw	x19,20(x1)
  78:	0130ac23          	sw	x19,24(x1)
  7c:	00100a13          	addi	x20,x0,1
  80:	01412023          	sw	x20,0(x2)
  84:	00200a13          	addi	x20,x0,2
  88:	01412023          	sw	x20,0(x2)
  8c:	00400a13          	addi	x20,x0,4
  90:	01412023          	sw	x20,0(x2)
  94:	00800a13          	addi	x20,x0,8
  98:	01412023          	sw	x20,0(x2)
  9c:	01000a13          	addi	x20,x0,16
  a0:	01412023          	sw	x20,0(x2)
  a4:	02000a13          	addi	x20,x0,32
  a8:	01412023          	sw	x20,0(x2)
  ac:	04000a13          	addi	x20,x0,64
  b0:	01412023          	sw	x20,0(x2)
  b4:	08000a13          	addi	x20,x0,128
  b8:	01412023          	sw	x20,0(x2)
  bc:	00012a83          	lw	x21,0(x2)
  c0:	001a8b13          	addi	x22,x21,1
  c4:	0160ae23          	sw	x22,28(x1)
  c8:	00022b83          	lw	x23,0(x4) # 0 <__text_start>
  cc:	005b8c13          	addi	x24,x23,5
  d0:	0380a023          	sw	x24,32(x1)
  d4:	00022c83          	lw	x25,0(x4) # 0 <__text_start>
  d8:	417c8d33          	sub	x26,x25,x23
  dc:	03a0a223          	sw	x26,36(x1)

000000e0 <send_S>:
  e0:	0041a303          	lw	x6,4(x3)
  e4:	00137313          	andi	x6,x6,1
  e8:	fe030ce3          	beq	x6,x0,e0 <send_S>
  ec:	05300393          	addi	x7,x0,83
  f0:	0071a023          	sw	x7,0(x3)

000000f4 <send_T>:
  f4:	0041a303          	lw	x6,4(x3)
  f8:	00137313          	andi	x6,x6,1
  fc:	fe030ce3          	beq	x6,x0,f4 <send_T>
 100:	05400393          	addi	x7,x0,84
 104:	0071a023          	sw	x7,0(x3)

00000108 <send_A>:
 108:	0041a303          	lw	x6,4(x3)
 10c:	00137313          	andi	x6,x6,1
 110:	fe030ce3          	beq	x6,x0,108 <send_A>
 114:	04100393          	addi	x7,x0,65
 118:	0071a023          	sw	x7,0(x3)

0000011c <send_L1>:
 11c:	0041a303          	lw	x6,4(x3)
 120:	00137313          	andi	x6,x6,1
 124:	fe030ce3          	beq	x6,x0,11c <send_L1>
 128:	04c00393          	addi	x7,x0,76
 12c:	0071a023          	sw	x7,0(x3)

00000130 <send_L2>:
 130:	0041a303          	lw	x6,4(x3)
 134:	00137313          	andi	x6,x6,1
 138:	fe030ce3          	beq	x6,x0,130 <send_L2>
 13c:	04c00393          	addi	x7,x0,76
 140:	0071a023          	sw	x7,0(x3)

00000144 <send_US>:
 144:	0041a303          	lw	x6,4(x3)
 148:	00137313          	andi	x6,x6,1
 14c:	fe030ce3          	beq	x6,x0,144 <send_US>
 150:	05f00393          	addi	x7,x0,95
 154:	0071a023          	sw	x7,0(x3)

00000158 <send_O>:
 158:	0041a303          	lw	x6,4(x3)
 15c:	00137313          	andi	x6,x6,1
 160:	fe030ce3          	beq	x6,x0,158 <send_O>
 164:	04f00393          	addi	x7,x0,79
 168:	0071a023          	sw	x7,0(x3)

0000016c <send_K>:
 16c:	0041a303          	lw	x6,4(x3)
 170:	00137313          	andi	x6,x6,1
 174:	fe030ce3          	beq	x6,x0,16c <send_K>
 178:	04b00393          	addi	x7,x0,75
 17c:	0071a023          	sw	x7,0(x3)

00000180 <send_NL>:
 180:	0041a303          	lw	x6,4(x3)
 184:	00137313          	andi	x6,x6,1
 188:	fe030ce3          	beq	x6,x0,180 <send_NL>
 18c:	00a00393          	addi	x7,x0,10
 190:	0071a023          	sw	x7,0(x3)
 194:	cafe1f37          	lui	x30,0xcafe1
 198:	234f0f13          	addi	x30,x30,564 # cafe1234 <TIMER_BASE+0xcafde214>
 19c:	07e0ae23          	sw	x30,124(x1)

000001a0 <done>:
 1a0:	0000006f          	jal	x0,1a0 <done>
