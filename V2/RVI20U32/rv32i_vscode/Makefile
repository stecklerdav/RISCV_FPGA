TOOLCHAIN := $(HOME)/toolchains/riscv/bin

CC      := $(TOOLCHAIN)/riscv32-unknown-elf-gcc
OBJDUMP := $(TOOLCHAIN)/riscv32-unknown-elf-objdump
OBJCOPY := $(TOOLCHAIN)/riscv32-unknown-elf-objcopy
NM      := $(TOOLCHAIN)/riscv32-unknown-elf-nm
SIZE    := $(TOOLCHAIN)/riscv32-unknown-elf-size
PY      := python3
XXD     := xxd

# Fuente ensamblador escrita a mano
ASM_SRC ?= prog_user.S

CFLAGS  := -march=rv32izicsr -mabi=ilp32 -Os -ffreestanding -nostartfiles -fno-pic \
          -fno-asynchronous-unwind-tables -fno-unwind-tables \
          -ffunction-sections -fdata-sections \
          -Wall -Wextra

# Para generar .s desde C (ASM del compilador)
C_ASMFLAGS := -S -fverbose-asm

LDFLAGS := -Wl,-T,link.ld,--gc-sections \
          --specs=nano.specs --specs=nosys.specs \
          -lc -lgcc

#LOADER_HDR := /media/steckler/xilinx_linux/RISCV_ZYNQ/RVI20U32/RVI20U32/CPU_V1/vitis/RV32I/src/prog_array.h

# Targets extra:
# - prog.asm:   disassembly "puro" (sin intercalar C)
# - prog.dump:  disassembly + hexdump de secciones (objdump -s)
# - prog.text.dump: solo .text/.rodata + hexdump (más manejable)
# - main.s / syscalls.s: ASM que genera GCC desde los .c (antes del link)
all: prog.elf prog.bin prog.mem prog.coe \
     prog.disasm prog.asm prog.dump prog.text.dump \
     main.s syscalls.s

prog.elf: start.S main.c syscalls.c link.ld
	$(CC) $(CFLAGS) start.S main.c syscalls.c $(LDFLAGS) -o $@
	$(SIZE) $@

prog.bin: prog.elf
	$(OBJCOPY) -O binary -j .text -j .rodata $< $@

prog.mem: prog.bin bin2mem.py
	$(PY) bin2mem.py prog.bin prog.mem
	@wc -l prog.mem

prog.coe: prog.mem mem2coe.py
	$(PY) mem2coe.py prog.mem prog.coe

# Disasm con C intercalado (si compilas con -g verás mejor el source)
prog.disasm: prog.elf
	$(OBJDUMP) -d -S $< > $@

# Disasm "puro" (solo asm desde el ELF)
prog.asm: prog.elf
	$(OBJDUMP) -d -M no-aliases,numeric $< > $@

# Disasm + volcado hex de secciones (puede ser grande)
prog.dump: prog.elf
	$(OBJDUMP) -d -s $< > $@

# Más útil para BRAM: solo .text y .rodata con hex
prog.text.dump: prog.elf
	$(OBJDUMP) -d -s -j .text -j .rodata $< > $@

# ASM generado por GCC desde los .c (antes de link)
main.s: main.c
	$(CC) $(CFLAGS) $(C_ASMFLAGS) -o $@ $<

syscalls.s: syscalls.c
	$(CC) $(CFLAGS) $(C_ASMFLAGS) -o $@ $<

#prog_array.h: prog.bin
#	$(XXD) -i prog.bin > $(LOADER_HDR)

symbols: prog.elf
	$(NM) prog.elf | grep -E "malloc|free|_sbrk|__heap_start|__heap_end|__stack_top"
# ================================prog_array.h=========================
# Compilar ASM escrito manualmente (para tests de pipeline)
# =========================================================

asm: prog_asm.coe prog_asm.asm

prog_asm.elf: $(ASM_SRC) link.ld
	$(CC) -x assembler-with-cpp $(CFLAGS) $< $(LDFLAGS) -o $@
	$(SIZE) $@

prog_asm.bin: prog_asm.elf
	$(OBJCOPY) -O binary -j .text -j .rodata $< $@

prog_asm.mem: prog_asm.bin bin2mem.py
	$(PY) bin2mem.py prog_asm.bin prog_asm.mem

prog_asm.coe: prog_asm.mem mem2coe.py
	$(PY) mem2coe.py prog_asm.mem prog_asm.coe

prog_asm.asm: prog_asm.elf
	$(OBJDUMP) -d -M no-aliases,numeric $< > $@

clean:
	rm -f prog.elf prog.bin prog.mem prog.coe \
	      prog.disasm prog.asm prog.dump prog.text.dump \
	      main.s syscalls.s

.PHONY: all clean symbols

#prog_array.h