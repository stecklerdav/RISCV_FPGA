#!/bin/bash
set -e

ISA_DIR="/media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/riscv-tests/isa"
COCOTB_DIR="/media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/COCOTB"

RESULTS_DIR="${COCOTB_DIR}/official_results"
mkdir -p "$RESULTS_DIR"
mkdir -p "${COCOTB_DIR}/programs"

TESTS=(
    rv32ui-p-simple
    rv32ui-p-add
    rv32ui-p-addi
    rv32ui-p-sub
    rv32ui-p-and
    rv32ui-p-andi
    rv32ui-p-or
    rv32ui-p-ori
    rv32ui-p-xor
    rv32ui-p-xori
    rv32ui-p-sll
    rv32ui-p-slli
    rv32ui-p-srl
    rv32ui-p-srli
    rv32ui-p-sra
    rv32ui-p-srai
    rv32ui-p-slt
    rv32ui-p-slti
    rv32ui-p-sltu
    rv32ui-p-sltiu
    rv32ui-p-lui
    rv32ui-p-auipc
    rv32ui-p-lw
    rv32ui-p-sw
    rv32ui-p-lb
    rv32ui-p-lbu
    rv32ui-p-lh
    rv32ui-p-lhu
    rv32ui-p-sb
    rv32ui-p-sh
    rv32ui-p-beq
    rv32ui-p-bne
    rv32ui-p-blt
    rv32ui-p-bltu
    rv32ui-p-bge
    rv32ui-p-bgeu
    rv32ui-p-jal
    rv32ui-p-jalr
)

PASS=0
FAIL=0

for t in "${TESTS[@]}"
do
    echo ""
    echo "=========================================="
    echo " RUNNING OFFICIAL RISC-V TEST: $t"
    echo "=========================================="

    cd "$ISA_DIR"

    if [ ! -f "$t" ]; then
        echo "[ERROR] No existe ejecutable: $ISA_DIR/$t"
        FAIL=$((FAIL + 1))
        exit 1
    fi

    echo "[INFO] Secciones del ELF:"
    riscv32-unknown-elf-objdump -h "$t" | grep -E "text|init|signature|tohost" || true

    echo "[INFO] Convirtiendo $t a BIN"

    riscv32-unknown-elf-objcopy -O binary \
        -j .text.init \
        -j .text \
        "$t" "${t}.bin"

    if [ ! -s "${t}.bin" ]; then
        echo "[ERROR] ${t}.bin quedó vacío"
        riscv32-unknown-elf-objdump -h "$t"
        exit 1
    fi

    echo "[INFO] Convirtiendo BIN a MEM"

    od -An -tx4 -v -w4 "${t}.bin" | sed 's/^[ \t]*//' > "${t}.mem"

    if [ ! -s "${t}.mem" ]; then
        echo "[ERROR] ${t}.mem quedó vacío"
        riscv32-unknown-elf-objdump -h "$t"
        exit 1
    fi

    echo "[INFO] Copiando ${t}.mem a Cocotb"

    cp "${t}.mem" "${COCOTB_DIR}/programs/prog_asm.mem"
    cp "${t}.mem" "${COCOTB_DIR}/prog_asm.mem"

    echo "[INFO] Primeras instrucciones cargadas:"
    head -10 "${COCOTB_DIR}/programs/prog_asm.mem"

    cd "$COCOTB_DIR"

    rm -rf sim_build
    rm -f results.xml

    if TEST_NAME="$t" make sim
    then
        echo "[PASS] $t"
        PASS=$((PASS + 1))

        if [ -f results.xml ]; then
            cp results.xml "${RESULTS_DIR}/${t}_results.xml"
        fi
    else
        echo "[FAIL] $t"
        FAIL=$((FAIL + 1))
        exit 1
    fi
done

echo ""
echo "=========================================="
echo " OFFICIAL RISC-V SUMMARY"
echo " PASS: $PASS"
echo " FAIL: $FAIL"
echo " TOTAL: $((PASS + FAIL))"
echo "=========================================="
