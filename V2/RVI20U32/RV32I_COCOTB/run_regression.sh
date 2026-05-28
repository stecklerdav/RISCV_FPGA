#!/bin/bash
set -e

TESTS=(
    TC-001_rv32i_alu_basic_signature
    TC-002_rv32i_load_store_byte_enable
    TC-003_pipeline_raw_forwarding_chain
    TC-004_pipeline_load_use_stall
    # TC-005_control_branch_taken_flush
    # TC-006_control_jal_jalr_link_redirect
    # TC-007_mmio_gpio_write_read
)

PROGRAM_DIR="programs"
ACTIVE_MEM="${PROGRAM_DIR}/prog_asm.mem"
RESULTS_DIR="regression_results"

mkdir -p "$RESULTS_DIR"

PASS_COUNT=0

for t in "${TESTS[@]}"
do
    WORD_INDEX=0

    echo ""
    echo "=========================================="
    echo " RUNNING TEST: $t"
    echo "=========================================="

    TEST_MEM="${PROGRAM_DIR}/${t}.mem"

    if [ ! -f "$TEST_MEM" ]; then
        echo "[ERROR] No existe: $TEST_MEM"
        exit 1
    fi

    case "$t" in
        TC-001*)
            SIG=0xCAFE0001
            ;;

        TC-002*)
            SIG=0x11223344
            ;;

        TC-003*)
            SIG=0xCAFE0003
            ;;

        TC-004*)
            SIG=0x00000005
            WORD_INDEX=4
            ;;

        TC-005*)
            SIG=0xCAFE0005
            ;;

        TC-006*)
            SIG=0xCAFE0006
            ;;

        TC-007*)
            SIG=0xCAFE0007
            ;;

        *)
            echo "[ERROR] No hay firma esperada definida para $t"
            exit 1
            ;;
    esac

    echo "[INFO] Expected signature: $SIG"

    cp "$TEST_MEM" "$ACTIVE_MEM"

    rm -rf sim_build results.xml

    if TEST_NAME="$t" \
       EXPECTED_SIGNATURE=$SIG \
       SIGNATURE_WORD_INDEX=${WORD_INDEX:-0} \
       make sim
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
echo " ALL TESTS PASSED"
echo " TOTAL PASS: $PASS_COUNT"
echo "=========================================="
