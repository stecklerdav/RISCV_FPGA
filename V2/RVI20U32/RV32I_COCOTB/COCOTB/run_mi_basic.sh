#!/bin/bash

ISA_DIR="/media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/riscv-tests/isa"
COCOTB_DIR="/media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/COCOTB"
MEM_FILE="$COCOTB_DIR/programs/prog_asm.mem"

TESTS=(
rv32mi-p-illegal
rv32mi-p-scall
rv32mi-p-breakpoint
rv32mi-p-sbreak
rv32mi-p-ma_fetch
rv32mi-p-ma_addr
)

PASS=0
FAIL=0

for T in "${TESTS[@]}"; do
    echo "========================================"
    echo "CARGANDO $T"
    echo "========================================"

    cd "$ISA_DIR" || exit 1

    riscv32-unknown-elf-objcopy -O binary \
        -j .text.init \
        -j .text \
        "$T" /tmp/test.bin

    od -An -tx4 -v -w4 /tmp/test.bin | sed 's/^[ \t]*//' > "$MEM_FILE"

    echo "Primeras instrucciones:"
    head -8 "$MEM_FILE"

    cd "$COCOTB_DIR" || exit 1

    make clean >/dev/null 2>&1

    if make sim TEST_NAME="$T" > "log_$T.txt" 2>&1; then
        echo "[PASS] $T"
        PASS=$((PASS+1))
    else
        echo "[FAIL] $T"
        tail -80 "log_$T.txt"
        FAIL=$((FAIL+1))
        continue
    fi
done

echo "========================================"
echo "PASS=$PASS FAIL=$FAIL"
echo "========================================"
