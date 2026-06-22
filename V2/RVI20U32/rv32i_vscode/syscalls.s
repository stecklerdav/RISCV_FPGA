	.file	"syscalls.c"
	.option nopic
	.attribute arch, "rv32i2p1_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C23 (xPack GNU RISC-V Embedded GCC x86_64) version 15.2.0 (riscv-none-elf)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=ilp32 -misa-spec=20191213 -march=rv32i_zicsr -Os -ffreestanding -fno-pic -fno-asynchronous-unwind-tables -fno-unwind-tables -ffunction-sections -fdata-sections
	.text
	.section	.text._sbrk,"ax",@progbits
	.align	2
	.globl	_sbrk
	.type	_sbrk, @function
_sbrk:
# syscalls.c:12:     char *old = brk;
	lui	a3,%hi(brk)	# tmp142,
# syscalls.c:11: {
	mv	a5,a0	# inc, inc
# syscalls.c:12:     char *old = brk;
	lw	a0,%lo(brk)(a3)		# <retval>, brk
# syscalls.c:20:     if (newb > &__heap_end) {
	lui	a4,%hi(__heap_end)	# tmp145,
	addi	a4,a4,%lo(__heap_end)	# tmp144, tmp145,
# syscalls.c:13:     char *newb = brk + inc;
	add	a5,a0,a5	# inc, newb_8, <retval>
# syscalls.c:17:     nb = (nb + 15u) & ~(uintptr_t)15u;
	addi	a5,a5,15	#, _2, newb_8
# syscalls.c:17:     nb = (nb + 15u) & ~(uintptr_t)15u;
	andi	a5,a5,-16	#, newb, _2
# syscalls.c:20:     if (newb > &__heap_end) {
	bgtu	a5,a4,.L3	#, newb, tmp144,
# syscalls.c:24:     brk = newb;
	sw	a5,%lo(brk)(a3)	# newb, brk
# syscalls.c:25:     return old;
	ret	
.L3:
# syscalls.c:21:         return (void*)-1;
	li	a0,-1		# <retval>,
# syscalls.c:26: }
	ret	
	.size	_sbrk, .-_sbrk
	.section	.sdata.brk,"aw"
	.align	2
	.type	brk, @object
	.size	brk, 4
brk:
	.word	__heap_start
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
