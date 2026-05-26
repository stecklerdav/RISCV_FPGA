		#!/bin/bash

set -e

TESTS=(
    test_add
    test_branch
    test_forwarding
    test_load_use
    test_gpio
    test_jump
    test_loop_long
)

PASS_COUNT=0

for t in "${TESTS[@]}"
do
    echo ""
    echo "=========================================="
    echo " RUNNING TEST: $t"
    echo "=========================================="

    cp programs/${t}.mem programs/prog_asm.mem

    make clean

    if make
    then
        echo "[PASS] $t"
        PASS_COUNT=$((PASS_COUNT + 1))
    else
        echo "[FAIL] $t"
        exit 1
    fi
done

echo ""
echo "=========================================="
echo " ALL TESTS PASSED"
echo " TOTAL PASS: $PASS_COUNT"
echo "=========================================="
