#!/usr/bin/env bash
set -euo pipefail

TEST="${1:-asm_tests/rv32i_alu_basic_signature.S}"
OUT="${2:-build/test.elf}"
mkdir -p "$(dirname "$OUT")"

riscv32-unknown-elf-gcc \
  -march=rv32i_zicsr -mabi=ilp32 \
  -ffreestanding -nostartfiles -fno-pic \
  -Wl,-T,link.ld,--gc-sections \
  "$TEST" -o "$OUT"

riscv32-unknown-elf-objdump -d "$OUT" > "${OUT%.elf}.dump"
riscv32-unknown-elf-objcopy -O verilog "$OUT" "${OUT%.elf}.mem"

echo "[OK] built $OUT"
