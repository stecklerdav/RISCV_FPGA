#!/bin/bash
set -e

TESTS=(
    TC_CORE_KEY
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

    rm -rf sim_build results.xml

    if TEST_NAME="$t" ASM="$ASM_FILE" make sim
    then
        echo "[PASS] $t"
        PASS_COUNT=$((PASS_COUNT + 1))

        if [ -f results.xml ]; then
            cp results.xml "${RESULTS_DIR}/${t}_results.xml"
        fi
    else
        echo "[FAIL] $t"
        exit 1
    fi
done

echo ""
echo "=========================================="
echo " REGRESSION SUMMARY"
echo " PASSED: $PASS_COUNT / ${#TESTS[@]}"
echo "=========================================="
