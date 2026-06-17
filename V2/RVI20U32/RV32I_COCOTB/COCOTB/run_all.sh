#!/bin/bash

ISA_DIR="/media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/riscv-tests/isa"

TESTS=$(cd "$ISA_DIR" && find . -maxdepth 1 -type f \( -name "rv32ui-p-*" -o -name "rv32mi-p-*" \) \
  ! -name "*.dump" ! -name "*.mem" ! -name "*.bin" \
  -printf "%f\n" | sort)

PASS=0
FAIL=0

for T in $TESTS; do
    echo "RUNNING $T"

    make clean >/dev/null 2>&1

    if make sim TEST_NAME=$T > "log_$T.txt" 2>&1; then
        echo "[PASS] $T"
        PASS=$((PASS+1))
    else
        echo "[FAIL] $T"
        tail -80 "log_$T.txt"
        FAIL=$((FAIL+1))
        break
    fi
done

echo "PASS=$PASS FAIL=$FAIL"
