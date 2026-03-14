	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C23 (xPack GNU RISC-V Embedded GCC x86_64) version 15.2.0 (riscv-none-elf)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=ilp32 -misa-spec=20191213 -march=rv32i -Os -ffreestanding -fno-pic -fno-asynchronous-unwind-tables -fno-unwind-tables -ffunction-sections -fdata-sections
	.text
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
# main.c:5:   volatile uint8_t a=34;
	li	a5,34		# tmp138,
# main.c:3: int main() {
	addi	sp,sp,-16	#,,
# main.c:5:   volatile uint8_t a=34;
	sb	a5,14(sp)	# tmp138, a
# main.c:6:   volatile uint8_t s=58;
	li	a5,58		# tmp139,
.L4:
	sb	a5,15(sp)	# tmp139, s
# main.c:9:       s=s+a; 
	lbu	a5,15(sp)	# s, s
	lbu	a4,14(sp)	# a, a
	add	a5,a5,a4	# a, _3, s
	j	.L4		#
	.size	main, .-main
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
