#!/bin/bash
set -e

TESTS=(
    TC-001_if_fetch_sequence
    TC-002_if_long_fetch_stress
    TC-003_if_id_reg_stall_flush
    TC-004_id_decode
)

PROGRAM_DIR="programs"
ACTIVE_MEM="${PROGRAM_DIR}/prog_asm.mem"
RESULTS_DIR="regression_results"

mkdir -p "$RESULTS_DIR"

PASS_COUNT=0

for t in "${TESTS[@]}"
do
    echo ""
    echo "=========================================="
    echo " RUNNING IF TEST: $t"
    echo "=========================================="

    TEST_MEM="${PROGRAM_DIR}/${t}.mem"

    if [ ! -f "$TEST_MEM" ]; then
        echo "[ERROR] No existe: $TEST_MEM"
        exit 1
    fi

    cp "$TEST_MEM" "$ACTIVE_MEM"

    rm -rf sim_build results.xml

    if TEST_NAME="$t" make sim
    then
        echo "[PASS] $t"
        PASS_COUNT=$((PASS_COUNT + 1))

        if [ -f results.xml ]; then
            cp results.xml "${RESULTS_DIR}/${t}_results.xml"
        fi
    else
        echo "[FAIL] $t"

        if [ -f results.xml ]; then
            cp results.xml "${RESULTS_DIR}/${t}_FAILED_results.xml"
        fi

        exit 1
    fi
done

echo ""
echo "=========================================="
echo " ALL IF TESTS PASSED"
echo " TOTAL PASS: $PASS_COUNT"
echo "=========================================="
