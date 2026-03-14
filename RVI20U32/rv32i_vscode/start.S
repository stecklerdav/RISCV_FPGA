.section .text.start
.globl _start
_start:
  /* init stack */
  la   sp, __stack_top

  /* clear .bss */
  la   t0, __bss_start
  la   t1, __bss_end
  li   t2, 0
1:
  bge  t0, t1, 2f
  sb   t2, 0(t0)
  addi t0, t0, 1
  j    1b
2:
  call main
3:
  j 3b
