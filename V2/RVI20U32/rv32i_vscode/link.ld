ENTRY(_start)

MEMORY
{
  ROM  (rx)  : ORIGIN = 0x00000000, LENGTH = 8K
  RAM  (rwx) : ORIGIN = 0x00002000, LENGTH = 4K
  MMIO (rw)  : ORIGIN = 0x00003000, LENGTH = 256
}

__stack_size = 0x400;
__heap_align = 16;

SECTIONS
{
  /* ========================================================= */
  /* TEXT / CODE                                                */
  /* ========================================================= */

  .text :
  {
    . = ALIGN(4);

    KEEP(*(.text.start))
    KEEP(*(.trap.vector))

    *(.text*)
    *(.rodata*)

    . = ALIGN(4);
  } > ROM

  __text_start = ORIGIN(ROM);
  __text_end   = .;


  /* ========================================================= */
  /* TRAP DEBUG / SIGNATURE AREA                               */
  /* ========================================================= */

  .trap_signature (NOLOAD) :
  {
    . = ALIGN(4);

    __trap_sig_start = .;

    *(.trap_signature*)

    . = ALIGN(4);

    __trap_sig_end = .;

  } > RAM


  /* ========================================================= */
  /* DATA                                                       */
  /* ========================================================= */

  .data :
  {
    . = ALIGN(4);

    __data_start = .;

    *(.data*)

    . = ALIGN(4);

    __data_end = .;

  } > RAM


  /* ========================================================= */
  /* BSS                                                        */
  /* ========================================================= */

  .bss :
  {
    . = ALIGN(4);

    __bss_start = .;

    *(.bss*)
    *(COMMON)

    . = ALIGN(4);

    __bss_end = .;

  } > RAM


  /* ========================================================= */
  /* HEAP / STACK                                                */
  /* ========================================================= */

  __end = .;

  . = ALIGN(__heap_align);

  __heap_start = .;

  __ram_end     = ORIGIN(RAM) + LENGTH(RAM);

  __stack_top   = __ram_end;
  __stack_limit = __stack_top - __stack_size;

  __heap_end    = __stack_limit;
}