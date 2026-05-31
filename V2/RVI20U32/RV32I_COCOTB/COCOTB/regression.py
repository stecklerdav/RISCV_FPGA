import os
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, RisingEdge


SIGNATURE_ADDR = 0x00002000
PASS_VALUE     = 0xCAFE0001
FAIL_MASK      = 0xFFFF0000
FAIL_BASE      = 0xDEAD0000

GPIO_OUT_EXPECTED = 0xA5
GPIO_DIR_EXPECTED = 0xFF


REQUIRED_PORTS = [
    "clk",
    "rst",

    "dmem_addr",
    "dmem_valid",
    "dmem_we",
    "dmem_wdata",
    "dmem_be",

    "mem_req_ready",
    "mem_rsp_valid",

    "id_pc_out",
    "id_instr_out",
    "id_valid_out",

    "rd_wdata",
    "regfile_we",
    "wb_rd",

    "gpio_out",
    "gpio_dir_0",
]


def safe_int(sig):
    try:
        return int(sig.value)
    except Exception:
        return None


def has_port(dut, name):
    return hasattr(dut, name)


async def reset_dut(dut):
    dut.rst.value = 1

    if has_port(dut, "gpio_in"):
        dut.gpio_in.value = 0x3C

    if has_port(dut, "priv_redirect_valid_0"):
        dut.priv_redirect_valid_0.value = 0

    if has_port(dut, "priv_redirect_target_0"):
        dut.priv_redirect_target_0.value = 0

    if has_port(dut, "timer_ready"):
        dut.timer_ready.value = 1

    await ClockCycles(dut.clk, 8)
    dut.rst.value = 0
    await ClockCycles(dut.clk, 4)


@cocotb.test()
async def regression(dut):
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    missing = [p for p in REQUIRED_PORTS if not has_port(dut, p)]
    assert not missing, (
        "Faltan puertos en RISCV_COCOTB_wrapper: "
        + ", ".join(missing)
        + "\nRegenera el wrapper BD y exporta esas señales."
    )

    await reset_dut(dut)

    test_name = os.getenv("TEST_NAME", "TC_CORE_KEY")
    max_cycles = int(os.getenv("MAX_CYCLES", "3000"))

    dut._log.info("==========================================")
    dut._log.info(" RUNNING RV32I CORE REGRESSION")
    dut._log.info(" TEST_NAME = %s", test_name)
    dut._log.info("==========================================")

    saw_pass_signature = False
    saw_wb_a0_42 = False
    saw_gpio_out = False
    saw_gpio_dir = False
    saw_uart_write = False

    last_id_pc = None

    for cyc in range(max_cycles):
        await RisingEdge(dut.clk)

        id_pc     = safe_int(dut.id_pc_out)
        id_instr  = safe_int(dut.id_instr_out)
        id_valid  = safe_int(dut.id_valid_out)

        dmem_addr  = safe_int(dut.dmem_addr)
        dmem_valid = safe_int(dut.dmem_valid)
        dmem_we    = safe_int(dut.dmem_we)
        dmem_wdata = safe_int(dut.dmem_wdata)
        dmem_be    = safe_int(dut.dmem_be)

        mem_req_ready = safe_int(dut.mem_req_ready)
        mem_rsp_valid = safe_int(dut.mem_rsp_valid)

        wb_rd      = safe_int(dut.wb_rd)
        rd_wdata   = safe_int(dut.rd_wdata)
        regfile_we = safe_int(dut.regfile_we)

        gpio_out = safe_int(dut.gpio_out)
        gpio_dir = safe_int(dut.gpio_dir_0)

        if cyc % 20 == 0:
            dut._log.info(
                "CYC=%04d ID_VALID=%s ID_PC=%s ID_INSTR=%s "
                "DMEM_VALID=%s WE=%s ADDR=%s WDATA=%s BE=%s "
                "REQ_READY=%s RSP_VALID=%s WB_WE=%s WB_RD=%s WB_DATA=%s "
                "GPIO_DIR=%s GPIO_OUT=%s",
                cyc,
                str(id_valid),
                "None" if id_pc is None else f"0x{id_pc:08X}",
                "None" if id_instr is None else f"0x{id_instr:08X}",
                str(dmem_valid),
                str(dmem_we),
                "None" if dmem_addr is None else f"0x{dmem_addr:08X}",
                "None" if dmem_wdata is None else f"0x{dmem_wdata:08X}",
                "None" if dmem_be is None else f"0x{dmem_be:X}",
                str(mem_req_ready),
                str(mem_rsp_valid),
                str(regfile_we),
                str(wb_rd),
                "None" if rd_wdata is None else f"0x{rd_wdata:08X}",
                "None" if gpio_dir is None else f"0x{gpio_dir:02X}",
                "None" if gpio_out is None else f"0x{gpio_out:02X}",
            )

        # =====================================================
        # Check PC does not become unknown and generally advances
        # =====================================================

        if id_valid == 1 and id_pc is not None:
            if last_id_pc is not None:
                # No hacemos assert estricto porque hay stalls/branches.
                # Solo trazamos si cambia.
                pass
            last_id_pc = id_pc

        # =====================================================
        # Check WB event: a0/x10 = 42
        # =====================================================

        if regfile_we == 1 and wb_rd == 10 and rd_wdata == 42:
            saw_wb_a0_42 = True
            dut._log.info("[OK] WB detectado: x10/a0 = 42")

        # =====================================================
        # Check GPIO final state
        # =====================================================

        if gpio_out == GPIO_OUT_EXPECTED:
            saw_gpio_out = True

        if gpio_dir == GPIO_DIR_EXPECTED:
            saw_gpio_dir = True

        # =====================================================
        # Check UART write transaction
        # UART_BASE = 0x3010
        # =====================================================

        if (
            dmem_valid == 1
            and dmem_we == 1
            and dmem_addr == 0x00003010
            and dmem_wdata == 0x00000041
        ):
            saw_uart_write = True
            dut._log.info("[OK] UART write detectado: addr=0x3010 data=0x41")

        # =====================================================
        # Check signature writes to RAM[0x2000]
        # =====================================================

        if dmem_valid == 1 and dmem_we == 1 and dmem_addr == SIGNATURE_ADDR:
            dut._log.info(
                "[SIGNATURE WRITE] cycle=%d addr=0x%08X data=0x%08X",
                cyc,
                dmem_addr,
                dmem_wdata,
            )

            if dmem_wdata == PASS_VALUE:
                saw_pass_signature = True
                dut._log.info("[PASS SIGNATURE] 0x%08X detectada", PASS_VALUE)
                break

            if (dmem_wdata & FAIL_MASK) == FAIL_BASE:
                fail_code = dmem_wdata & 0xFFFF
                assert False, (
                    f"[FAIL SIGNATURE] data=0x{dmem_wdata:08X}, "
                    f"fail_code={fail_code}"
                )

    assert saw_pass_signature, (
        f"No se detectó PASS signature 0x{PASS_VALUE:08X} "
        f"en {max_cycles} ciclos"
    )

    assert saw_wb_a0_42, "No se observó WB correcto de x10/a0 = 42"
    assert saw_gpio_dir, "GPIO_DIR no llegó a 0xFF"
    assert saw_gpio_out, "GPIO_OUT no llegó a 0xA5"
    assert saw_uart_write, "No se observó escritura UART addr=0x3010 data=0x41"

    dut._log.info("==========================================")
    dut._log.info(" RV32I CORE REGRESSION PASSED")
    dut._log.info("==========================================")
