# ============================================================
# Cocotb Makefile - RV32I Core Regression
# ============================================================

SIM ?= icarus
TOPLEVEL_LANG = verilog

TOPLEVEL = RISCV_COCOTB_wrapper
MODULE   = regression

RTL_DIR ?= rtl
VERILOG_SOURCES = $(shell find $(PWD)/$(RTL_DIR) -name "*.v")

RISCV_PREFIX ?= riscv32-unknown-elf-

CC      = $(RISCV_PREFIX)gcc
OBJCOPY = $(RISCV_PREFIX)objcopy
OBJDUMP = $(RISCV_PREFIX)objdump
SIZE    = $(RISCV_PREFIX)size

ASM ?= programs/TC_CORE_KEY.S

BUILD_DIR = build
PROGRAM_DIR = programs

ELF = $(BUILD_DIR)/prog_asm.elf
BIN = $(BUILD_DIR)/prog_asm.bin
DUMP = $(BUILD_DIR)/prog_asm.dump
MEM = $(PROGRAM_DIR)/prog_asm.mem

CFLAGS = \
	-march=rv32i \
	-mabi=ilp32 \
	-ffreestanding \
	-nostdlib \
	-nostartfiles \
	-fno-pic \
	-O0

LDFLAGS = \
	-Wl,-Ttext=0x00000000 \
	-Wl,--no-relax \
	-Wl,--gc-sections

IVERILOG_ARGS += -g2012

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(PROGRAM_DIR):
	mkdir -p $(PROGRAM_DIR)

.PHONY: gen_mem
gen_mem: $(MEM)

$(ELF): $(ASM) | $(BUILD_DIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(SIZE) $@
	$(OBJDUMP) -D $@ > $(DUMP)

$(BIN): $(ELF)
	$(OBJCOPY) -O binary -j .text $< $@

$(MEM): $(BIN) | $(PROGRAM_DIR)
	od -An -tx4 -v -w4 $< | sed 's/^[ \t]*//' > $@
	cp $@ prog_asm.mem
	@echo "[OK] MEM generado: $@"
	@echo "[OK] Copia generada: prog_asm.mem"

.PHONY: run_local
run_local: gen_mem
	$(MAKE) sim

.PHONY: clean_prog
clean_prog:
	rm -rf $(BUILD_DIR)
	rm -f $(MEM)
	rm -f prog_asm.mem

.PHONY: clean_all
clean_all: clean clean_prog
	rm -rf sim_build
	rm -f results.xml

include $(shell cocotb-config --makefiles)/Makefile.sim
