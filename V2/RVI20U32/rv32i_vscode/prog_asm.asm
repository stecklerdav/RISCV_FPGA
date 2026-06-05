
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <__text_start>:
80000000:	800032b7          	lui	x5,0x80003
80000004:	00300313          	addi	x6,x0,3
80000008:	0062a423          	sw	x6,8(x5) # 80003008 <__ram_end+0x8>

8000000c <main_loop>:
8000000c:	0042a383          	lw	x7,4(x5)
80000010:	0013f393          	andi	x7,x7,1
80000014:	00038863          	beq	x7,x0,80000024 <switch_off>

80000018 <switch_on>:
80000018:	00300e13          	addi	x28,x0,3
8000001c:	01c2a023          	sw	x28,0(x5)
80000020:	fedff06f          	jal	x0,8000000c <main_loop>

80000024 <switch_off>:
80000024:	00000e13          	addi	x28,x0,0
80000028:	01c2a023          	sw	x28,0(x5)
8000002c:	fe1ff06f          	jal	x0,8000000c <main_loop>
