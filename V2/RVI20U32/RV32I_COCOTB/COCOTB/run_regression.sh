#!/bin/bash
set -e

TESTS=(
    TC_CORE_KEY
    TC_LOAD_USE_UART_TIMER
    TC_FULL_PIPELINE_MMIO_WAIT
    TC_UART_TIMEOUT_RECOVERY
)

PROGRAM_DIR="programs"
RESULTS_DIR="regression_results"

mkdir -p "$RESULTS_DIR"

PASS_COUNT=0

for t in "${TESTS[@]}"
do
    echo ""
    echo "=========================================="
    echo " RUNNING RV32I TEST: $t"
    echo "=========================================="

    ASM_FILE="${PROGRAM_DIR}/${t}.S"

    if [ ! -f "$ASM_FILE" ]; then
        echo "[ERROR] No existe: $ASM_FILE"
        exit 1
    fi

    echo ""
    echo "===== ASM FILE ====="
    echo "$ASM_FILE"

    echo ""
    echo "===== FIRST ASM LINES ====="
    head -20 "$ASM_FILE"

    rm -rf sim_build build
    rm -f results.xml
    rm -f programs/prog_asm.mem
    rm -f prog_asm.mem

    if TEST_NAME="$t" ASM="$ASM_FILE" make sim
    then
        echo ""
        echo "[PASS] $t"

        echo ""
        echo "===== GENERATED MEM ====="
        head -20 programs/prog_asm.mem

        PASS_COUNT=$((PASS_COUNT + 1))

        if [ -f results.xml ]; then
            cp results.xml "${RESULTS_DIR}/${t}_results.xml"
        fi
    else
        echo ""
        echo "[FAIL] $t"
        exit 1
    fi
done

echo ""
echo "=========================================="
echo " REGRESSION SUMMARY"
echo " PASSED: $PASS_COUNT / ${#TESTS[@]}"
echo "=========================================="
