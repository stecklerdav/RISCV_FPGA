
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00002437          	lui	x8,0x2
   4:	11100393          	addi	x7,x0,273
   8:	00742023          	sw	x7,0(x8) # 2000 <__end>
   c:	00100493          	addi	x9,x0,1
  10:	08942023          	sw	x9,128(x8)
  14:	00100f93          	addi	x31,x0,1
  18:	00c000ef          	jal	x1,24 <t1_jal_target>
  1c:	06600f93          	addi	x31,x0,102
  20:	27c0006f          	jal	x0,29c <fail>

00000024 <t1_jal_target>:
  24:	20100393          	addi	x7,x0,513
  28:	00742223          	sw	x7,4(x8)
  2c:	00200f93          	addi	x31,x0,2
  30:	00300293          	addi	x5,x0,3
  34:	00700313          	addi	x6,x0,7

00000038 <t2_nt_loop>:
  38:	26628263          	beq	x5,x6,29c <fail>
  3c:	00128293          	addi	x5,x5,1
  40:	fe629ce3          	bne	x5,x6,38 <t2_nt_loop>
  44:	20200393          	addi	x7,x0,514
  48:	00742423          	sw	x7,8(x8)
  4c:	00300f93          	addi	x31,x0,3
  50:	00300293          	addi	x5,x0,3
  54:	00700313          	addi	x6,x0,7

00000058 <t3_nt_loop>:
  58:	24628263          	beq	x5,x6,29c <fail>
  5c:	00128293          	addi	x5,x5,1
  60:	fe629ce3          	bne	x5,x6,58 <t3_nt_loop>
  64:	20300393          	addi	x7,x0,515
  68:	00742623          	sw	x7,12(x8)
  6c:	00400f93          	addi	x31,x0,4
  70:	00300293          	addi	x5,x0,3
  74:	00700313          	addi	x6,x0,7

00000078 <t4_nt_loop>:
  78:	22628263          	beq	x5,x6,29c <fail>
  7c:	00128293          	addi	x5,x5,1
  80:	fe629ce3          	bne	x5,x6,78 <t4_nt_loop>
  84:	20400393          	addi	x7,x0,516
  88:	00742823          	sw	x7,16(x8)
  8c:	00500f93          	addi	x31,x0,5
  90:	0a000513          	addi	x10,x0,160
  94:	00050067          	jalr	x0,0(x10)
  98:	1f700f93          	addi	x31,x0,503
  9c:	2000006f          	jal	x0,29c <fail>

000000a0 <t5_jalr_target>:
  a0:	20500393          	addi	x7,x0,517
  a4:	00742a23          	sw	x7,20(x8)
  a8:	00600f93          	addi	x31,x0,6
  ac:	00300293          	addi	x5,x0,3
  b0:	00700313          	addi	x6,x0,7

000000b4 <t6_nt_loop>:
  b4:	1e628463          	beq	x5,x6,29c <fail>
  b8:	00128293          	addi	x5,x5,1
  bc:	fe629ce3          	bne	x5,x6,b4 <t6_nt_loop>
  c0:	20600393          	addi	x7,x0,518
  c4:	00742c23          	sw	x7,24(x8)
  c8:	00700f93          	addi	x31,x0,7
  cc:	00500293          	addi	x5,x0,5

000000d0 <t7_lu_loop>:
  d0:	08042603          	lw	x12,128(x8)
  d4:	00061663          	bne	x12,x0,e0 <t7_lu_taken>
  d8:	2c000f93          	addi	x31,x0,704
  dc:	1c00006f          	jal	x0,29c <fail>

000000e0 <t7_lu_taken>:
  e0:	fff28293          	addi	x5,x5,-1
  e4:	fe0296e3          	bne	x5,x0,d0 <t7_lu_loop>
  e8:	20700393          	addi	x7,x0,519
  ec:	00742e23          	sw	x7,28(x8)
  f0:	00800f93          	addi	x31,x0,8
  f4:	00300293          	addi	x5,x0,3
  f8:	00700313          	addi	x6,x0,7

000000fc <t8_nt_loop>:
  fc:	1a628063          	beq	x5,x6,29c <fail>
 100:	00128293          	addi	x5,x5,1
 104:	fe629ce3          	bne	x5,x6,fc <t8_nt_loop>
 108:	20800393          	addi	x7,x0,520
 10c:	02742023          	sw	x7,32(x8)
 110:	00900f93          	addi	x31,x0,9
 114:	00100293          	addi	x5,x0,1
 118:	00200313          	addi	x6,x0,2
 11c:	18628063          	beq	x5,x6,29c <fail>
 120:	00000663          	beq	x0,x0,12c <t9_ok>
 124:	38500f93          	addi	x31,x0,901
 128:	1740006f          	jal	x0,29c <fail>

0000012c <t9_ok>:
 12c:	20900393          	addi	x7,x0,521
 130:	02742223          	sw	x7,36(x8)
 134:	00a00f93          	addi	x31,x0,10
 138:	00400293          	addi	x5,x0,4

0000013c <t10_loop>:
 13c:	fff28293          	addi	x5,x5,-1
 140:	00000013          	addi	x0,x0,0
 144:	00000013          	addi	x0,x0,0
 148:	fe029ae3          	bne	x5,x0,13c <t10_loop>
 14c:	20a00393          	addi	x7,x0,522
 150:	02742423          	sw	x7,40(x8)
 154:	00b00f93          	addi	x31,x0,11
 158:	00300293          	addi	x5,x0,3
 15c:	00700313          	addi	x6,x0,7

00000160 <t11_nt_loop>:
 160:	12628e63          	beq	x5,x6,29c <fail>
 164:	00128293          	addi	x5,x5,1
 168:	fe629ce3          	bne	x5,x6,160 <t11_nt_loop>
 16c:	20b00393          	addi	x7,x0,523
 170:	02742623          	sw	x7,44(x8)
 174:	00c00f93          	addi	x31,x0,12
 178:	00300293          	addi	x5,x0,3
 17c:	00700313          	addi	x6,x0,7

00000180 <t12_nt_loop>:
 180:	10628e63          	beq	x5,x6,29c <fail>
 184:	00128293          	addi	x5,x5,1
 188:	fe629ce3          	bne	x5,x6,180 <t12_nt_loop>
 18c:	20c00393          	addi	x7,x0,524
 190:	02742823          	sw	x7,48(x8)
 194:	00d00f93          	addi	x31,x0,13
 198:	00100293          	addi	x5,x0,1
 19c:	00200313          	addi	x6,x0,2
 1a0:	0e628e63          	beq	x5,x6,29c <fail>
 1a4:	00000663          	beq	x0,x0,1b0 <t13_ok>
 1a8:	51500f93          	addi	x31,x0,1301
 1ac:	0f00006f          	jal	x0,29c <fail>

000001b0 <t13_ok>:
 1b0:	20d00393          	addi	x7,x0,525
 1b4:	02742a23          	sw	x7,52(x8)
 1b8:	00e00f93          	addi	x31,x0,14
 1bc:	00b00293          	addi	x5,x0,11

000001c0 <t14_lu_loop>:
 1c0:	08042603          	lw	x12,128(x8)
 1c4:	00061663          	bne	x12,x0,1d0 <t14_lu_taken>
 1c8:	57c00f93          	addi	x31,x0,1404
 1cc:	0d00006f          	jal	x0,29c <fail>

000001d0 <t14_lu_taken>:
 1d0:	fff28293          	addi	x5,x5,-1
 1d4:	fe0296e3          	bne	x5,x0,1c0 <t14_lu_loop>
 1d8:	20e00393          	addi	x7,x0,526
 1dc:	02742c23          	sw	x7,56(x8)
 1e0:	00f00f93          	addi	x31,x0,15
 1e4:	1f400513          	addi	x10,x0,500
 1e8:	00050067          	jalr	x0,0(x10)
 1ec:	5df00f93          	addi	x31,x0,1503
 1f0:	0ac0006f          	jal	x0,29c <fail>

000001f4 <t15_jalr_target>:
 1f4:	20f00393          	addi	x7,x0,527
 1f8:	02742e23          	sw	x7,60(x8)
 1fc:	01000f93          	addi	x31,x0,16
 200:	00c000ef          	jal	x1,20c <t16_jal_target>
 204:	64200f93          	addi	x31,x0,1602
 208:	0940006f          	jal	x0,29c <fail>

0000020c <t16_jal_target>:
 20c:	21000393          	addi	x7,x0,528
 210:	04742023          	sw	x7,64(x8)
 214:	01100f93          	addi	x31,x0,17
 218:	00600293          	addi	x5,x0,6

0000021c <t17_loop>:
 21c:	fff28293          	addi	x5,x5,-1
 220:	00000013          	addi	x0,x0,0
 224:	00000013          	addi	x0,x0,0
 228:	fe029ae3          	bne	x5,x0,21c <t17_loop>
 22c:	21100393          	addi	x7,x0,529
 230:	04742223          	sw	x7,68(x8)
 234:	01200f93          	addi	x31,x0,18
 238:	00700293          	addi	x5,x0,7

0000023c <t18_loop>:
 23c:	fff28293          	addi	x5,x5,-1
 240:	00000013          	addi	x0,x0,0
 244:	00000013          	addi	x0,x0,0
 248:	fe029ae3          	bne	x5,x0,23c <t18_loop>
 24c:	21200393          	addi	x7,x0,530
 250:	04742423          	sw	x7,72(x8)
 254:	01300f93          	addi	x31,x0,19
 258:	00300293          	addi	x5,x0,3
 25c:	00700313          	addi	x6,x0,7

00000260 <t19_nt_loop>:
 260:	02628e63          	beq	x5,x6,29c <fail>
 264:	00128293          	addi	x5,x5,1
 268:	fe629ce3          	bne	x5,x6,260 <t19_nt_loop>
 26c:	21300393          	addi	x7,x0,531
 270:	04742623          	sw	x7,76(x8)
 274:	01400f93          	addi	x31,x0,20
 278:	28800513          	addi	x10,x0,648
 27c:	00050067          	jalr	x0,0(x10)
 280:	7d300f93          	addi	x31,x0,2003
 284:	0180006f          	jal	x0,29c <fail>

00000288 <t20_jalr_target>:
 288:	21400393          	addi	x7,x0,532
 28c:	04742823          	sw	x7,80(x8)

00000290 <all_ok>:
 290:	2aa00393          	addi	x7,x0,682
 294:	00742c23          	sw	x7,24(x8)

00000298 <halt>:
 298:	0000006f          	jal	x0,298 <halt>

0000029c <fail>:
 29c:	0ff42e23          	sw	x31,252(x8)

000002a0 <fail_halt>:
 2a0:	0000006f          	jal	x0,2a0 <fail_halt>
