import os
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles


@cocotb.test()
async def regression(dut):

    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    dut.rst.value = 1
    await ClockCycles(dut.clk, 10)
    dut.rst.value = 0

    TEST_NAME = os.getenv("TEST_NAME", "")

    dut._log.info("===== PIPELINE TRACE =====")

    for cyc in range(80):
        await ClockCycles(dut.clk, 1)

        try:
            pc = int(dut.BASIC_i.pc_unit_0.pc.value)
            instr = int(dut.BASIC_i.RV32I_IF_id_instr_out.value)

            id_rd = int(dut.BASIC_i.decoder_0.rd.value)

            ex_valid = int(dut.BASIC_i.Core_RV32I_ex_valid.value)
            ex_rd = int(dut.BASIC_i.RV32I_ID_ex_rd.value)
            ex_rd_we = int(dut.BASIC_i.ex_rd_we_1.value)
            ex_mem_re = int(dut.BASIC_i.ex_mem_re_1.value)

            mem_valid = int(dut.BASIC_i.ex_mem_reg_1_mem_valid.value)
            mem_rd = int(dut.BASIC_i.ex_mem_reg_1_mem_rd.value)
            mem_rd_we = int(dut.BASIC_i.ex_mem_reg_1_mem_rd_we.value)
            mem_mem_re = int(dut.BASIC_i.ex_mem_reg_1_mem_mem_re.value)

            req_valid = int(dut.BASIC_i.mem_req_valid_1.value)
            dmem_ready = int(dut.BASIC_i.dmem_ready_1.value)

            mem_out_valid = int(dut.BASIC_i.mem_stage_0_mem_out_valid.value)
            mem_out_rd = int(dut.BASIC_i.mem_stage_0_mem_out_rd.value)
            mem_out_rd_we = int(dut.BASIC_i.RV32I_MEM_mem_rd_we.value)
            mem_out_wb_sel = int(dut.BASIC_i.mem_stage_0_mem_out_wb_sel.value)
            mem_out = int(dut.BASIC_i.mem_stage_0_mem_out_data.value)

            wb_valid = int(dut.BASIC_i.RV32I_MEM_wb_valid.value)
            wb_rd = int(dut.BASIC_i.Core_RV32I_wb_rd.value)
            wb_rd_we_raw = int(dut.BASIC_i.mem_wb_reg_0_wb_rd_we.value)
            wb_we = int(dut.BASIC_i.Core_RV32I_regfile_we.value)
            wb_wdata = int(dut.BASIC_i.Core_RV32I_rd_wdata1.value)

            fwd_a = int(dut.BASIC_i.forwarding_0_forward_a.value)
            fwd_b = int(dut.BASIC_i.forwarding_0_forward_b.value)
            fwd_store = int(dut.BASIC_i.forwarding_0_forward_store.value)

            br_rs1 = int(dut.BASIC_i.Core_RV32I_out_data.value)
            br_rs2 = int(dut.BASIC_i.forward_mux_1_out_data.value)
           # br_taken = int(dut.BASIC_i.branch_0_branch_taken.value)

            dut._log.info(
                f"CYC={cyc:03d} "
                f"PC=0x{pc:08X} "
                f"IFID_INSTR=0x{instr:08X} "
                f"ID_RD={id_rd:02d} "
                f"EX_VALID={ex_valid} "
                f"EX_RD={ex_rd:02d} "
                f"EX_RD_WE={ex_rd_we} "
                f"EX_MEM_RE={ex_mem_re} "
                f"MEM_VALID={mem_valid} "
                f"MEM_RD={mem_rd:02d} "
                f"MEM_RD_WE={mem_rd_we} "
                f"MEM_MEM_RE={mem_mem_re} "
                f"REQ={req_valid} "
                f"READY={dmem_ready} "
                f"MEM_OUT_VALID={mem_out_valid} "
                f"MEM_OUT_RD={mem_out_rd:02d} "
                f"MEM_OUT_RD_WE={mem_out_rd_we} "
                f"MEM_OUT_WB_SEL={mem_out_wb_sel} "
                f"MEM_OUT=0x{mem_out:08X} "
                f"WB_VALID={wb_valid} "
                f"WB_RD={wb_rd:02d} "
                f"WB_RD_WE_RAW={wb_rd_we_raw} "
                f"WB_WE={wb_we} "
                f"WB_WDATA=0x{wb_wdata:08X} "
                f"FWD_A={fwd_a} "
                f"FWD_B={fwd_b} "
                f"FWD_STORE={fwd_store} "
                f"BR_RS1=0x{br_rs1:08X} "
                f"BR_RS2=0x{br_rs2:08X} "
              #  f"BR_TAKEN={br_taken}"
            )

        except Exception as e:
            dut._log.info(f"TRACE ERROR: {e}")

    await ClockCycles(dut.clk, 350)

    expected = int(os.getenv("EXPECTED_SIGNATURE", "0xCAFE0004"), 16)

    WORD_INDEX = int(os.getenv("SIGNATURE_WORD_INDEX", "0"))

    b0 = int(dut.BASIC_i.ram_data_1.mem0[WORD_INDEX].value)
    b1 = int(dut.BASIC_i.ram_data_1.mem1[WORD_INDEX].value)
    b2 = int(dut.BASIC_i.ram_data_1.mem2[WORD_INDEX].value)
    b3 = int(dut.BASIC_i.ram_data_1.mem3[WORD_INDEX].value)

    sig = (b3 << 24) | (b2 << 16) | (b1 << 8) | b0

    rb0 = int(dut.BASIC_i.ram_data_1.mem0[4].value)
    rb1 = int(dut.BASIC_i.ram_data_1.mem1[4].value)
    rb2 = int(dut.BASIC_i.ram_data_1.mem2[4].value)
    rb3 = int(dut.BASIC_i.ram_data_1.mem3[4].value)

    ram4 = (rb3 << 24) | (rb2 << 16) | (rb1 << 8) | rb0

    dut._log.info("===== RAM WORDS =====")
    dut._log.info(f"RAM[0] = 0x{sig:08X}")
    dut._log.info(f"RAM[4] = 0x{ram4:08X}")
    dut._log.info(f"[EXPECTED] 0x{expected:08X}")

    dut._log.info("===== REGFILE =====")

    for i in range(8):
        try:
            val = int(dut.BASIC_i.regfile_0.regs[i].value)
            dut._log.info(f"x{i} = 0x{val:08X}")
        except Exception as e:
            dut._log.info(f"x{i} read error: {e}")

    if "TC-004" in TEST_NAME:
        x3 = int(dut.BASIC_i.regfile_0.regs[3].value)
        x4 = int(dut.BASIC_i.regfile_0.regs[4].value)

        x6 = int(dut.BASIC_i.regfile_0.regs[6].value)
        x7 = int(dut.BASIC_i.regfile_0.regs[7].value)

        dut._log.info(f"x6 FINAL = 0x{x6:08X}")
        dut._log.info(f"x7 FINAL = 0x{x7:08X}")

        assert x3 == 0x00000005, (
            f"x3 load failed: got 0x{x3:08X}"
        )

        assert x4 == 0x00000007, (
            f"load-use failed: x4 got 0x{x4:08X}"
        )

    assert sig == expected, (
        f"Signature mismatch "
        f"expected=0x{expected:08X} "
        f"got=0x{sig:08X}"
    )
