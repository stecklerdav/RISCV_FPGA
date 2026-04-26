
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	01000093          	addi	x1,x0,16
   4:	06400113          	addi	x2,x0,100
   8:	00700193          	addi	x3,x0,7
   c:	00108213          	addi	x4,x1,1
  10:	003202b3          	add	x5,x4,x3
  14:	00528333          	add	x6,x5,x5
  18:	405303b3          	sub	x7,x6,x5
  1c:	00100413          	addi	x8,x0,1
  20:	00140413          	addi	x8,x8,1
  24:	00140413          	addi	x8,x8,1
  28:	000404b3          	add	x9,x8,x0
  2c:	03700513          	addi	x10,x0,55
  30:	00a0a223          	sw	x10,4(x1)
  34:	0040a583          	lw	x11,4(x1)
  38:	00b58633          	add	x12,x11,x11
  3c:	0040a703          	lw	x14,4(x1)
  40:	00e0a423          	sw	x14,8(x1)
  44:	0080a683          	lw	x13,8(x1)
  48:	02000793          	addi	x15,x0,32
  4c:	00f0a823          	sw	x15,16(x1)
  50:	0100a803          	lw	x16,16(x1)
  54:	00082883          	lw	x17,0(x16)
  58:	00100913          	addi	x18,x0,1
  5c:	01290663          	beq	x18,x18,68 <branch_ok>
  60:	06300913          	addi	x18,x0,99
  64:	05800913          	addi	x18,x0,88

00000068 <branch_ok>:
  68:	00500993          	addi	x19,x0,5
  6c:	05399c63          	bne	x19,x19,c4 <branch_bad>
  70:	00198993          	addi	x19,x19,1
  74:	00800a6f          	jal	x20,7c <jal_target>
  78:	06300a93          	addi	x21,x0,99

0000007c <jal_target>:
  7c:	01500a93          	addi	x21,x0,21
  80:	00000c17          	auipc	x24,0x0
  84:	010c0c13          	addi	x24,x24,16 # 90 <jalr_target>
  88:	000c0b67          	jalr	x22,0(x24)
  8c:	06300b93          	addi	x23,x0,99

00000090 <jalr_target>:
  90:	01700b93          	addi	x23,x0,23
  94:	07b00013          	addi	x0,x0,123
  98:	00500c93          	addi	x25,x0,5
  9c:	00100d13          	addi	x26,x0,1
  a0:	003d1d13          	slli	x26,x26,0x3
  a4:	001d5d93          	srli	x27,x26,0x1
  a8:	01adae33          	slt	x28,x27,x26
  ac:	01bd3eb3          	sltu	x29,x26,x27
  b0:	00f00f13          	addi	x30,x0,15
  b4:	01ef4fb3          	xor	x31,x30,x30
  b8:	01efef33          	or	x30,x31,x30
  bc:	01ff7fb3          	and	x31,x30,x31

000000c0 <done>:
  c0:	0000006f          	jal	x0,c0 <done>

000000c4 <branch_bad>:
  c4:	06300993          	addi	x19,x0,99
  c8:	ff9ff06f          	jal	x0,c0 <done>
