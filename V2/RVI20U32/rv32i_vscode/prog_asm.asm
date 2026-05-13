
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00002a37          	lui	x20,0x2
   4:	00000f93          	addi	x31,x0,0
   8:	01fa2023          	sw	x31,0(x20) # 2000 <__end>
   c:	00000f13          	addi	x30,x0,0
  10:	01ea2223          	sw	x30,4(x20)

00000014 <test_beq_taken>:
  14:	00100f93          	addi	x31,x0,1
  18:	00500093          	addi	x1,x0,5
  1c:	00500113          	addi	x2,x0,5
  20:	00208463          	beq	x1,x2,28 <beq_taken_ok>
  24:	1ac0006f          	jal	x0,1d0 <fail>

00000028 <beq_taken_ok>:
  28:	00100f13          	addi	x30,x0,1
  2c:	01ea2223          	sw	x30,4(x20)

00000030 <test_beq_not_taken>:
  30:	00200f93          	addi	x31,x0,2
  34:	00500093          	addi	x1,x0,5
  38:	00600113          	addi	x2,x0,6
  3c:	18208a63          	beq	x1,x2,1d0 <fail>
  40:	00200f13          	addi	x30,x0,2
  44:	01ea2223          	sw	x30,4(x20)

00000048 <test_bne_taken>:
  48:	00300f93          	addi	x31,x0,3
  4c:	00500093          	addi	x1,x0,5
  50:	00600113          	addi	x2,x0,6
  54:	00209463          	bne	x1,x2,5c <bne_taken_ok>
  58:	1780006f          	jal	x0,1d0 <fail>

0000005c <bne_taken_ok>:
  5c:	00300f13          	addi	x30,x0,3
  60:	01ea2223          	sw	x30,4(x20)

00000064 <test_bne_not_taken>:
  64:	00400f93          	addi	x31,x0,4
  68:	00700093          	addi	x1,x0,7
  6c:	00700113          	addi	x2,x0,7
  70:	16209063          	bne	x1,x2,1d0 <fail>
  74:	00400f13          	addi	x30,x0,4
  78:	01ea2223          	sw	x30,4(x20)

0000007c <test_blt_taken>:
  7c:	00500f93          	addi	x31,x0,5
  80:	fff00093          	addi	x1,x0,-1
  84:	00100113          	addi	x2,x0,1
  88:	0020c463          	blt	x1,x2,90 <blt_taken_ok>
  8c:	1440006f          	jal	x0,1d0 <fail>

00000090 <blt_taken_ok>:
  90:	00500f13          	addi	x30,x0,5
  94:	01ea2223          	sw	x30,4(x20)

00000098 <test_blt_not_taken>:
  98:	00600f93          	addi	x31,x0,6
  9c:	00100093          	addi	x1,x0,1
  a0:	fff00113          	addi	x2,x0,-1
  a4:	1220c663          	blt	x1,x2,1d0 <fail>
  a8:	00600f13          	addi	x30,x0,6
  ac:	01ea2223          	sw	x30,4(x20)

000000b0 <test_bge_taken>:
  b0:	00700f93          	addi	x31,x0,7
  b4:	00100093          	addi	x1,x0,1
  b8:	fff00113          	addi	x2,x0,-1
  bc:	0020d463          	bge	x1,x2,c4 <bge_taken_ok>
  c0:	1100006f          	jal	x0,1d0 <fail>

000000c4 <bge_taken_ok>:
  c4:	00700f13          	addi	x30,x0,7
  c8:	01ea2223          	sw	x30,4(x20)

000000cc <test_bge_not_taken>:
  cc:	00800f93          	addi	x31,x0,8
  d0:	fff00093          	addi	x1,x0,-1
  d4:	00100113          	addi	x2,x0,1
  d8:	0e20dc63          	bge	x1,x2,1d0 <fail>
  dc:	00800f13          	addi	x30,x0,8
  e0:	01ea2223          	sw	x30,4(x20)

000000e4 <test_bltu_taken>:
  e4:	00900f93          	addi	x31,x0,9
  e8:	00100093          	addi	x1,x0,1
  ec:	00200113          	addi	x2,x0,2
  f0:	0020e463          	bltu	x1,x2,f8 <bltu_taken_ok>
  f4:	0dc0006f          	jal	x0,1d0 <fail>

000000f8 <bltu_taken_ok>:
  f8:	00900f13          	addi	x30,x0,9
  fc:	01ea2223          	sw	x30,4(x20)

00000100 <test_bltu_not_taken>:
 100:	00a00f93          	addi	x31,x0,10
 104:	fff00093          	addi	x1,x0,-1
 108:	00100113          	addi	x2,x0,1
 10c:	0c20e263          	bltu	x1,x2,1d0 <fail>
 110:	00a00f13          	addi	x30,x0,10
 114:	01ea2223          	sw	x30,4(x20)

00000118 <test_bgeu_taken>:
 118:	00b00f93          	addi	x31,x0,11
 11c:	fff00093          	addi	x1,x0,-1
 120:	00100113          	addi	x2,x0,1
 124:	0020f463          	bgeu	x1,x2,12c <bgeu_taken_ok>
 128:	0a80006f          	jal	x0,1d0 <fail>

0000012c <bgeu_taken_ok>:
 12c:	00b00f13          	addi	x30,x0,11
 130:	01ea2223          	sw	x30,4(x20)

00000134 <test_bgeu_not_taken>:
 134:	00c00f93          	addi	x31,x0,12
 138:	00100093          	addi	x1,x0,1
 13c:	fff00113          	addi	x2,x0,-1
 140:	0820f863          	bgeu	x1,x2,1d0 <fail>
 144:	00c00f13          	addi	x30,x0,12
 148:	01ea2223          	sw	x30,4(x20)

0000014c <test_jal>:
 14c:	00d00f93          	addi	x31,x0,13
 150:	0080056f          	jal	x10,158 <jal_target>
 154:	07c0006f          	jal	x0,1d0 <fail>

00000158 <jal_target>:
 158:	04aa2023          	sw	x10,64(x20)
 15c:	00d00f13          	addi	x30,x0,13
 160:	01ea2223          	sw	x30,4(x20)

00000164 <test_jal_x0>:
 164:	00e00f93          	addi	x31,x0,14
 168:	03700293          	addi	x5,x0,55
 16c:	0080006f          	jal	x0,174 <jal_x0_target>
 170:	0600006f          	jal	x0,1d0 <fail>

00000174 <jal_x0_target>:
 174:	03700313          	addi	x6,x0,55
 178:	04629c63          	bne	x5,x6,1d0 <fail>
 17c:	00e00f13          	addi	x30,x0,14
 180:	01ea2223          	sw	x30,4(x20)

00000184 <test_jalr>:
 184:	00f00f93          	addi	x31,x0,15
 188:	19400293          	addi	x5,x0,404
 18c:	000285e7          	jalr	x11,0(x5)
 190:	0400006f          	jal	x0,1d0 <fail>

00000194 <jalr_target>:
 194:	04ba2223          	sw	x11,68(x20)
 198:	00f00f13          	addi	x30,x0,15
 19c:	01ea2223          	sw	x30,4(x20)

000001a0 <test_jalr_clear_bit0>:
 1a0:	01000f93          	addi	x31,x0,16
 1a4:	1b400293          	addi	x5,x0,436
 1a8:	00128293          	addi	x5,x5,1
 1ac:	00028667          	jalr	x12,0(x5)
 1b0:	0200006f          	jal	x0,1d0 <fail>

000001b4 <jalr_odd_target>:
 1b4:	04ca2423          	sw	x12,72(x20)
 1b8:	01000f13          	addi	x30,x0,16
 1bc:	01ea2223          	sw	x30,4(x20)

000001c0 <pass>:
 1c0:	12345fb7          	lui	x31,0x12345
 1c4:	678f8f93          	addi	x31,x31,1656 # 12345678 <__ram_end+0x12342678>
 1c8:	01fa2023          	sw	x31,0(x20)

000001cc <pass_loop>:
 1cc:	0000006f          	jal	x0,1cc <pass_loop>

000001d0 <fail>:
 1d0:	01fa2023          	sw	x31,0(x20)

000001d4 <fail_loop>:
 1d4:	0000006f          	jal	x0,1d4 <fail_loop>
