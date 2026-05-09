
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00003537          	lui	x10,0x3
   4:	01050513          	addi	x10,x10,16 # 3010 <__ram_end+0x10>
   8:	000025b7          	lui	x11,0x2
   c:	06400293          	addi	x5,x0,100

00000010 <wait_tx_d>:
  10:	00452303          	lw	x6,4(x10)
  14:	00137393          	andi	x7,x6,1
  18:	fe038ce3          	beq	x7,x0,10 <wait_tx_d>
  1c:	00552023          	sw	x5,0(x10)

00000020 <wait_rx_d>:
  20:	00452303          	lw	x6,4(x10)
  24:	00437393          	andi	x7,x6,4
  28:	fe038ce3          	beq	x7,x0,20 <wait_rx_d>
  2c:	00852403          	lw	x8,8(x10)
  30:	0085a023          	sw	x8,0(x11) # 2000 <__end>
  34:	06100293          	addi	x5,x0,97

00000038 <wait_tx_a>:
  38:	00452303          	lw	x6,4(x10)
  3c:	00137393          	andi	x7,x6,1
  40:	fe038ce3          	beq	x7,x0,38 <wait_tx_a>
  44:	00552023          	sw	x5,0(x10)

00000048 <wait_rx_a>:
  48:	00452303          	lw	x6,4(x10)
  4c:	00437393          	andi	x7,x6,4
  50:	fe038ce3          	beq	x7,x0,48 <wait_rx_a>
  54:	00852403          	lw	x8,8(x10)
  58:	0085a223          	sw	x8,4(x11)
  5c:	07600293          	addi	x5,x0,118

00000060 <wait_tx_v>:
  60:	00452303          	lw	x6,4(x10)
  64:	00137393          	andi	x7,x6,1
  68:	fe038ce3          	beq	x7,x0,60 <wait_tx_v>
  6c:	00552023          	sw	x5,0(x10)

00000070 <wait_rx_v>:
  70:	00452303          	lw	x6,4(x10)
  74:	00437393          	andi	x7,x6,4
  78:	fe038ce3          	beq	x7,x0,70 <wait_rx_v>
  7c:	00852403          	lw	x8,8(x10)
  80:	0085a423          	sw	x8,8(x11)
  84:	06900293          	addi	x5,x0,105

00000088 <wait_tx_i>:
  88:	00452303          	lw	x6,4(x10)
  8c:	00137393          	andi	x7,x6,1
  90:	fe038ce3          	beq	x7,x0,88 <wait_tx_i>
  94:	00552023          	sw	x5,0(x10)

00000098 <wait_rx_i>:
  98:	00452303          	lw	x6,4(x10)
  9c:	00437393          	andi	x7,x6,4
  a0:	fe038ce3          	beq	x7,x0,98 <wait_rx_i>
  a4:	00852403          	lw	x8,8(x10)
  a8:	0085a623          	sw	x8,12(x11)
  ac:	06400293          	addi	x5,x0,100

000000b0 <wait_tx_d2>:
  b0:	00452303          	lw	x6,4(x10)
  b4:	00137393          	andi	x7,x6,1
  b8:	fe038ce3          	beq	x7,x0,b0 <wait_tx_d2>
  bc:	00552023          	sw	x5,0(x10)

000000c0 <wait_rx_d2>:
  c0:	00452303          	lw	x6,4(x10)
  c4:	00437393          	andi	x7,x6,4
  c8:	fe038ce3          	beq	x7,x0,c0 <wait_rx_d2>
  cc:	00852403          	lw	x8,8(x10)
  d0:	0085a823          	sw	x8,16(x11)

000000d4 <done>:
  d4:	0000006f          	jal	x0,d4 <done>
