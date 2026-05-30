import os
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles


NOP = 0x00000013

ADDI_X5_X0_123 = 0x07B00293   # addi x5, x0, 123
SW_X2_8_X1     = 0x0020A423   # sw x2, 8(x1)
BEQ_X1_X2_8    = 0x00208463   # beq x1, x2, +8
ADD_X3_X1_X2   = 0x002081B3   # add x3, x1, x2
ADDI_X6_X0_55  = 0x03700313   # addi x6, x0, 55


def has_unknown(value):
    s = str(value).lower()
    return ("x" in s) or ("z" in s) or ("u" in s)


def safe_int(value):
    if has_unknown(value):
        return None
    return int(value)


@cocotb.test()
async def regression(dut):

    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    dut.if_id_enable.value = 1
    dut.if_id_flush.value = 0

    dut.rd_we.value = 0
    dut.rd_addr.value = 0
    dut.rd_wdata.value = 0

    dut.rst.value = 1
    await ClockCycles(dut.clk, 5)

    dut.rst.value = 0
    await ClockCycles(dut.clk, 3)

    test_name = os.getenv("TEST_NAME", "")

    dut._log.info(f"IF_PC={dut.if_pc_debug.value}")

    if "TC-004" not in test_name:
        dut._log.info(f"Skipping TC-004 checks. TEST_NAME={test_name}")
        return

    dut._log.info("===== TC-004 ID DECODE / ID_EX REG TEST =====")

    seen_addi  = False
    seen_sw    = False
    seen_beq   = False
    seen_add   = False
    seen_addi6 = False

    for cyc in range(30):
        await ClockCycles(dut.clk, 1)

        if_pc_raw    = dut.if_pc_debug.value
        if_instr_raw = dut.if_instr_debug.value
        id_instr_raw = dut.id_instr_debug.value
        ex_instr_raw = dut.ex_instr.value

        ex_pc_raw    = dut.ex_pc.value
        ex_rd_raw    = dut.ex_rd.value
        ex_rs1_raw   = dut.ex_rs1.value
        ex_rs2_raw   = dut.ex_rs2.value
        ex_imm_raw   = dut.ex_imm.value
        ex_rd_we_raw = dut.ex_rd_we.value
        ex_valid_raw = dut.ex_valid.value

        dut._log.info(
            f"CYC={cyc:02d} "
            f"IF_PC={if_pc_raw} "
            f"IF_INSTR={if_instr_raw} "
            f"ID_INSTR={id_instr_raw} "
            f"EX_INSTR={ex_instr_raw} "
            f"EX_VALID={ex_valid_raw}"
        )

        if has_unknown(ex_instr_raw):
            dut._log.info("EX_INSTR todavía tiene X/Z/U, se ignora este ciclo")
            continue

        ex_instr = safe_int(ex_instr_raw)
        ex_pc    = safe_int(ex_pc_raw)
        ex_rd    = safe_int(ex_rd_raw)
        ex_rs1   = safe_int(ex_rs1_raw)
        ex_rs2   = safe_int(ex_rs2_raw)
        ex_imm   = safe_int(ex_imm_raw)
        ex_rd_we = safe_int(ex_rd_we_raw)
        ex_valid = safe_int(ex_valid_raw)

        if None in [ex_instr, ex_pc, ex_rd, ex_rs1, ex_rs2, ex_imm, ex_rd_we, ex_valid]:
            dut._log.info("Alguna señal EX todavía tiene X/Z/U, se ignora este ciclo")
            continue

        dut._log.info(
            f"CYC={cyc:02d} "
            f"EX_VALID={ex_valid} "
            f"EX_PC=0x{ex_pc:08X} "
            f"EX_INSTR=0x{ex_instr:08X} "
            f"RS1={ex_rs1} RS2={ex_rs2} RD={ex_rd} "
            f"IMM=0x{ex_imm:08X} RD_WE={ex_rd_we}"
        )

        if ex_instr == NOP:
            continue

        if ex_instr == ADDI_X5_X0_123:
            assert ex_rd == 5, "ADDI: ex_rd should be x5"
            assert ex_rs1 == 0, "ADDI: ex_rs1 should be x0"
            assert ex_imm == 123, "ADDI: immediate should be 123"
            assert ex_rd_we == 1, "ADDI: rd_we should be 1"
            seen_addi = True
            dut._log.info("PASS ADDI x5,x0,123")

        elif ex_instr == SW_X2_8_X1:
            assert ex_rs1 == 1, "SW: rs1 should be x1"
            assert ex_rs2 == 2, "SW: rs2 should be x2"
            assert ex_imm == 8, "SW: immediate should be 8"
            assert ex_rd_we == 0, "SW: rd_we should be 0"
            seen_sw = True
            dut._log.info("PASS SW x2,8(x1)")

        elif ex_instr == BEQ_X1_X2_8:
            assert ex_rs1 == 1, "BEQ: rs1 should be x1"
            assert ex_rs2 == 2, "BEQ: rs2 should be x2"
            assert ex_rd_we == 0, "BEQ: rd_we should be 0"
            seen_beq = True
            dut._log.info("PASS BEQ x1,x2,+8")

        elif ex_instr == ADD_X3_X1_X2:
            assert ex_rs1 == 1, "ADD: rs1 should be x1"
            assert ex_rs2 == 2, "ADD: rs2 should be x2"
            assert ex_rd == 3, "ADD: rd should be x3"
            assert ex_rd_we == 1, "ADD: rd_we should be 1"
            seen_add = True
            dut._log.info("PASS ADD x3,x1,x2")

        elif ex_instr == ADDI_X6_X0_55:
            assert ex_rd == 6, "ADDI6: ex_rd should be x6"
            assert ex_rs1 == 0, "ADDI6: ex_rs1 should be x0"
            assert ex_imm == 55, "ADDI6: immediate should be 55"
            assert ex_rd_we == 1, "ADDI6: rd_we should be 1"
            seen_addi6 = True
            dut._log.info("PASS ADDI x6,x0,55")

    assert seen_addi,  "No se vio ADDI x5,x0,123 en EX"
    assert seen_sw,    "No se vio SW x2,8(x1) en EX"
    assert seen_beq,   "No se vio BEQ x1,x2,+8 en EX"
    assert seen_add,   "No se vio ADD x3,x1,x2 en EX"
    assert seen_addi6, "No se vio ADDI x6,x0,55 en EX"

    dut._log.info("===== TC-004 PASSED =====")


