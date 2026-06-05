#!/usr/bin/env bash
set -u

TESTS=(
rv32ui-p-add
rv32ui-p-addi
rv32ui-p-and
rv32ui-p-andi
rv32ui-p-auipc
rv32ui-p-beq
rv32ui-p-bge
rv32ui-p-bgeu
rv32ui-p-blt
rv32ui-p-bltu
rv32ui-p-bne
rv32ui-p-jal
rv32ui-p-jalr
rv32ui-p-lb
rv32ui-p-lbu
rv32ui-p-lh
rv32ui-p-lhu
rv32ui-p-lui
rv32ui-p-lw
rv32ui-p-or
rv32ui-p-ori
rv32ui-p-sb
rv32ui-p-sh
rv32ui-p-simple
rv32ui-p-sll
rv32ui-p-slli
rv32ui-p-slt
rv32ui-p-slti
rv32ui-p-sltiu
rv32ui-p-sltu
rv32ui-p-sra
rv32ui-p-srai
rv32ui-p-srl
rv32ui-p-srli
rv32ui-p-sub
rv32ui-p-sw
rv32ui-p-xor
rv32ui-p-xori
)

OUTDIR=official_results_$(date +%Y%m%d_%H%M%S)
mkdir -p "$OUTDIR"

PASS=0
FAIL=0

for T in "${TESTS[@]}"; do
    echo "===================================="
    echo "RUN $T"
    echo "===================================="

    rm -rf sim_build results.xml

    TEST_NAME="$T" make sim > "$OUTDIR/${T}.log" 2>&1

    if grep -q "TESTS=1 PASS=1 FAIL=0" "$OUTDIR/${T}.log"; then
        echo "$T PASS" | tee -a "$OUTDIR/summary.txt"
        PASS=$((PASS+1))
    else
        echo "$T FAIL" | tee -a "$OUTDIR/summary.txt"
        FAIL=$((FAIL+1))
    fi
done

echo "====================================" | tee -a "$OUTDIR/summary.txt"
echo "TOTAL PASS=$PASS FAIL=$FAIL" | tee -a "$OUTDIR/summary.txt"
echo "Logs en: $OUTDIR"
