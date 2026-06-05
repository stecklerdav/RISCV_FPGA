import os
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, ReadOnly


TOHOST_ADDRS = [0x80001000, 0x00001000]


def find_child_by_name(obj, target, max_depth=14, depth=0):
    if depth > max_depth:
        return None

    try:
        for child in obj:
            if child._name == target:
                return child

            found = find_child_by_name(child, target, max_depth, depth + 1)
            if found is not None:
                return found
    except Exception:
        return None

    return None


def safe_int(obj):
    if obj is None:
        return None

    try:
        return int(obj.value)
    except Exception:
        return None


def log_signal(dut, label, sig):
    val = safe_int(sig)

    if val is None:
        dut._log.info(f"{label}: NO_ENCONTRADA")
    else:
        dut._log.info(f"{label}: 0x{val:08X}")


def log_signal_1bit(dut, label, sig):
    val = safe_int(sig)

    if val is None:
        dut._log.info(f"{label}: NO_ENCONTRADA")
    else:
        dut._log.info(f"{label}: {val}")


def log_pipeline_stall_state(dut, cycle=None):
    prefix = ""

    if cycle is not None:
        prefix = f"[cycle={cycle}] "

    names = [
        ("PC", "pc_unit_0_pc", "hex"),
        ("ROM_ADDR", "pc_to_imem_addr_0_addr", "hex"),
        ("ROM_DOUT", "rom_memory_0_dout", "hex"),
        ("IF_ID_INSTR", "RV32I_IF_id_instr_out", "hex"),
        ("IF_ID_PC", "RV32I_IF_id_pc_out", "hex"),
        ("EX_PC", "Core_RV32I_ex_pc", "hex"),
        ("EX_INSTR", "Core_RV32I_ex_instr", "hex"),
        ("EX_VALID", "Core_RV32I_ex_valid", "bit"),
        ("OP3_STALL_NET", "Op3_1", "bit"),
        ("MEM_STALL_REQ_TOP", "mem_stall_req", "bit"),
        ("MEM_STAGE_STALL_REQ", "mem_stage_0_mem_stall_req", "bit"),
        ("IF_STALL", "stall", "bit"),
        ("PC_EN", "pc_en_1", "bit"),
        ("HOLD", "hold_1", "bit"),
        ("FLUSH", "flush_1", "bit"),
        ("BUBBLE", "bubble_1", "bit"),
        ("DMEM_VALID", "RV32I_MEM_dmem_valid", "bit"),
        ("DMEM_WE", "RV32I_MEM_dmem_we", "bit"),
        ("DMEM_ADDR", "RV32I_MEM_dmem_addr", "hex"),
        ("DMEM_WDATA", "RV32I_MEM_dmem_wdata", "hex"),
    ]

    msg = prefix + "PIPE "

    for label, name, fmt in names:
        sig = find_child_by_name(dut, name)
        val = safe_int(sig)

        if val is None:
            msg += f"{label}=NA "
        else:
            if fmt == "hex":
                msg += f"{label}=0x{val:08X} "
            else:
                msg += f"{label}={val} "

    dut._log.info(msg)


def log_debug_state(dut):
    dut._log.info("========== DEBUG STATE ==========")

    signals_32 = [
        ("PC_IF", "pc_unit_0_pc"),
        ("EX_PC", "Core_RV32I_ex_pc"),
        ("EX_INSTR", "Core_RV32I_ex_instr"),
        ("DMEM_ADDR", "RV32I_MEM_dmem_addr"),
        ("DMEM_WDATA", "RV32I_MEM_dmem_wdata"),
        ("CSR_RDATA", "csr_file_0_csr_rdata"),
        ("CSR_RD_DATA", "csr_access_unit_0_csr_rd_data"),
        ("CSR_WDATA", "csr_access_unit_0_csr_wdata"),
        ("PC_PREDICT_NEXT", "branch_predictor_btb_0_pred_next_pc"),
        ("PC_DEBUG_LAST_PREDICT", "pc_unit_0_pc_debug_last_predict"),
        ("ROM_ADDR", "pc_to_imem_addr_0_addr"),
        ("ROM_DOUT", "rom_memory_0_dout"),
        ("IF_ID_INSTR", "RV32I_IF_id_instr_out"),
        ("IF_ID_PC", "RV32I_IF_id_pc_out"),
        ("MEM_STALL_REQ_TOP", "mem_stall_req"),
        ("MEM_STAGE_STALL_REQ", "mem_stage_0_mem_stall_req"),
        ("OP3_STALL_NET", "Op3_1"),
    ]

    signals_1 = [
        ("EX_VALID", "Core_RV32I_ex_valid"),
        ("EX_ILLEGAL", "Core_RV32I_ex_illegal_instr"),
        ("EX_EXCEPTION_VALID", "Core_RV32I_ex_exception_valid"),
        ("MEM_EXCEPTION_VALID", "Core_RV32I_mem_exception_valid"),
        ("MEM_FAULT_VALID", "Core_RV32I_mem_fault_valid"),
        ("PRIV_REDIRECT_VALID", "privileged_pc_redire_0_priv_redirect_valid"),
        ("TRAP_ENTER", "trap_controller_0_trap_enter"),
        ("TRAP_FLUSH", "trap_controller_0_trap_flush"),
        ("CSR_RD_WE", "csr_access_unit_0_csr_rd_we"),
        ("CSR_WE", "csr_access_unit_0_csr_we"),
        ("CSR_USE_PC_EN", "csr_use_detection_0_pc_en"),
        ("CSR_USE_HOLD", "csr_use_detection_0_if_id_hold"),
        ("CSR_USE_FLUSH", "csr_use_detection_0_id_ex_flush"),
        ("PC_EN", "pc_en_1"),
        ("STALL", "stall1_1"),
        ("OP3_STALL_NET", "Op3_1"),
        ("MEM_STAGE_STALL_REQ", "mem_stage_0_mem_stall_req"),
        ("FLUSH", "flush_1"),
        ("LOAD_USE", "load_use_detection_0_load_use_hazard"),
        ("IF_ID_HOLD", "hold_1"),
        ("IF_ID_ENABLE", "if_id_enable_1"),
        ("PC_PREDICT_VALID", "branch_predictor_btb_0_pred_valid"),
        ("PC_PREDICT_TAKEN", "branch_predictor_btb_0_pred_taken"),
        ("PC_DEBUG_PREDICT_PULSE", "pc_unit_0_pc_debug_predict_pulse"),
        ("ROM_EN", "ena_1"),
    ]

    for label, name in signals_32:
        sig = find_child_by_name(dut, name)
        log_signal(dut, label, sig)

    for label, name in signals_1:
        sig = find_child_by_name(dut, name)
        log_signal_1bit(dut, label, sig)

    csr = find_child_by_name(dut, "csr_file_0")

    if csr is None:
        csr = find_child_by_name(dut, "csr_file")

    if csr is None:
        dut._log.warning("No encontré instancia csr_file_0 / csr_file")
    else:
        for reg_name in ["mstatus", "mtvec", "mepc", "mcause", "mtval", "mie", "mip"]:
            sig = find_child_by_name(csr, reg_name, max_depth=4)
            val = safe_int(sig)

            if val is None:
                dut._log.info(f"CSR.{reg_name}: NO_ENCONTRADO")
            else:
                dut._log.info(f"CSR.{reg_name}: 0x{val:08X}")

    dut._log.info("=================================")


def get_reset_handle(dut):
    if hasattr(dut, "rst"):
        return dut.rst

    if hasattr(dut, "Reset"):
        return dut.Reset

    raise AssertionError("No encontré reset: ni dut.rst ni dut.Reset")


def get_ram_handle(dut):
    ram = find_child_by_name(dut, "ram_data")

    if ram is None:
        ram = find_child_by_name(dut, "ram_data_1")

    if ram is None:
        raise AssertionError("No encontré la instancia ram_data / ram_data_1 en la jerarquía")

    return ram


def read_ram_word(dut, index):
    ram = get_ram_handle(dut)

    try:
        b0 = int(ram.inst.mem0[index].value)
        b1 = int(ram.inst.mem1[index].value)
        b2 = int(ram.inst.mem2[index].value)
        b3 = int(ram.inst.mem3[index].value)

        return (b3 << 24) | (b2 << 16) | (b1 << 8) | b0

    except Exception:
        try:
            return int(ram.inst.mem[index].value)
        except Exception as e:
            raise AssertionError(
                f"No pude leer RAM[{index}] por mem0..mem3 ni por mem[]: {e}"
            )


def get_required_signal(dut, name):
    sig = find_child_by_name(dut, name)

    if sig is None:
        raise AssertionError(f"No encontré la señal interna: {name}")

    return sig


async def apply_reset(dut, cycles_assert=10, cycles_after=5):
    rst = get_reset_handle(dut)

    rst.value = 1

    if hasattr(dut, "SW1"):
        dut.SW1.value = 0

    await ClockCycles(dut.clk, cycles_assert)

    rst.value = 0
    await ClockCycles(dut.clk, cycles_after)


async def dump_ram(dut, words=12):
    await ReadOnly()

    for i in range(words):
        val = read_ram_word(dut, i)
        dut._log.info(f"RAM[{i}] = 0x{val:08X}")


async def wait_tohost(dut, max_cycles=20000):
    dmem_valid = get_required_signal(dut, "mem_req_valid_1")
    dmem_addr = get_required_signal(dut, "RV32I_MEM_dmem_addr")
    dmem_we = get_required_signal(dut, "RV32I_MEM_dmem_we")
    dmem_wdata = get_required_signal(dut, "RV32I_MEM_dmem_wdata")

    fwd_a = get_required_signal(dut, "forwarding_0_forward_a")
    fwd_b = get_required_signal(dut, "forwarding_0_forward_b")

    pc_redirect_valid = get_required_signal(dut, "branch_0_pc_redirect_valid")
    pc_redirect_target = get_required_signal(dut, "branch_0_pc_redirect_target")
    ex_actual_next_pc = get_required_signal(dut, "branch_0_ex_actual_next_pc")

    ex_pc = get_required_signal(dut, "Core_RV32I_ex_pc")
    ex_instr = get_required_signal(dut, "Core_RV32I_ex_instr")

    dut._log.info("Esperando escritura oficial a tohost...")
    dut._log.info(
        "TOHOST_ADDRS = " +
        ", ".join([f"0x{x:08X}" for x in TOHOST_ADDRS])
    )

    pc_sig = find_child_by_name(dut, "pc_unit_0_pc")
    last_pc = None

    for cycle in range(max_cycles):
        await ClockCycles(dut.clk, 1)
        await ReadOnly()

        valid = int(dmem_valid.value)
        we = int(dmem_we.value)
        addr = int(dmem_addr.value)
        data = int(dmem_wdata.value)

        if pc_sig is not None:
            last_pc = safe_int(pc_sig)

        if cycle < 40 or (cycle % 500 == 0):
            log_pipeline_stall_state(dut, cycle)

        ex_pc_val = safe_int(ex_pc)

        try:
            if ex_pc_val in [0x80000380, 0x80000388]:
                tp_sig = find_child_by_name(dut, "regfile_0_debug_x4")
                t0_sig = find_child_by_name(dut, "regfile_0_debug_x5")

                tp_val = safe_int(tp_sig)
                t0_val = safe_int(t0_sig)

                dut._log.info(
                    f"LOOP20 "
                    f"cycle={cycle} "
                    f"EX_PC=0x{ex_pc_val:08X} "
                    f"EX_INSTR=0x{safe_int(ex_instr):08X} "
                    f"TP_x4=0x{tp_val:08X} "
                    f"T0_x5=0x{t0_val:08X}"
                )

        except Exception as e:
            dut._log.info(f"LOOP20 DEBUG ERROR: {e}")

        if ex_pc_val == 0x80000388:
            dut._log.info("")
            dut._log.info("========== BRANCH DEBUG ==========")
            dut._log.info(f"cycle = {cycle}")
            dut._log.info(f"EX_PC = 0x{safe_int(ex_pc):08X}")
            dut._log.info(f"EX_INSTR = 0x{safe_int(ex_instr):08X}")
            dut._log.info(f"FWD_A = {safe_int(fwd_a)}")
            dut._log.info(f"FWD_B = {safe_int(fwd_b)}")
            dut._log.info(f"PC_REDIRECT_VALID = {safe_int(pc_redirect_valid)}")

            target = safe_int(pc_redirect_target)
            if target is not None:
                dut._log.info(f"PC_REDIRECT_TARGET = 0x{target:08X}")

            next_pc = safe_int(ex_actual_next_pc)
            if next_pc is not None:
                dut._log.info(f"EX_ACTUAL_NEXT_PC = 0x{next_pc:08X}")

            ex_rs1_data = find_child_by_name(dut, "forward_mux_0_out_data")
            ex_rs2_data = find_child_by_name(dut, "forward_mux_1_out_data")
            exmem_alu = find_child_by_name(dut, "ex_mem_reg_1_mem_alu_result")
            mem_fwd = find_child_by_name(dut, "mem_stage_0_mem_forward_data")
            wb_data = find_child_by_name(dut, "wb_mux_0_rd_wdata")

            rs1v = safe_int(ex_rs1_data)
            rs2v = safe_int(ex_rs2_data)
            exmv = safe_int(exmem_alu)
            mfv = safe_int(mem_fwd)
            wbv = safe_int(wb_data)

            dut._log.info(f"BR_RS1_DATA = 0x{rs1v:08X}" if rs1v is not None else "BR_RS1_DATA = NA")
            dut._log.info(f"BR_RS2_DATA = 0x{rs2v:08X}" if rs2v is not None else "BR_RS2_DATA = NA")
            dut._log.info(f"EXMEM_ALU   = 0x{exmv:08X}" if exmv is not None else "EXMEM_ALU   = NA")
            dut._log.info(f"MEM_FWD     = 0x{mfv:08X}" if mfv is not None else "MEM_FWD     = NA")
            dut._log.info(f"WB_DATA     = 0x{wbv:08X}" if wbv is not None else "WB_DATA     = NA")

            mem_stage_valid = find_child_by_name(dut, "mem_stage_0_mem_out_valid")
            mem_stage_rd = find_child_by_name(dut, "mem_stage_0_mem_out_rd")
            mem_stage_rd_we = find_child_by_name(dut, "mem_stage_0_mem_out_rd_we")
            mem_fwd_data = find_child_by_name(dut, "mem_stage_0_mem_forward_data")

            dut._log.info(f"MEM_STAGE_VALID = {safe_int(mem_stage_valid)}")
            dut._log.info(f"MEM_STAGE_RD    = {safe_int(mem_stage_rd)}")
            dut._log.info(f"MEM_STAGE_RD_WE = {safe_int(mem_stage_rd_we)}")

            mf = safe_int(mem_fwd_data)
            if mf is not None:
                dut._log.info(f"MEM_STAGE_FWD_DATA = 0x{mf:08X}")
            else:
                dut._log.info("MEM_STAGE_FWD_DATA = NA")

            dut._log.info("==================================")
            dut._log.info("")

        if valid and we:
            dut._log.info(
                f"MEM WRITE cycle={cycle} "
                f"addr=0x{addr:08X} "
                f"data=0x{data:08X}"
            )

        if valid and we and addr in TOHOST_ADDRS:
            dut._log.info(
                f"TOHOST write detectado: "
                f"addr=0x{addr:08X} "
                f"data=0x{data:08X}"
            )

            if data == 0x00000001:
                dut._log.info("PASS oficial RISC-V: tohost = 1")
                return

            log_debug_state(dut)

            raise AssertionError(
                f"FAIL oficial RISC-V: "
                f"tohost=0x{data:08X}. "
                f"addr=0x{addr:08X}"
            )

    dut._log.info("")
    dut._log.info("========== BRANCH DEBUG ==========")
    dut._log.info(f"FWD_A = {safe_int(fwd_a)}")
    dut._log.info(f"FWD_B = {safe_int(fwd_b)}")
    dut._log.info(f"PC_REDIRECT_VALID = {safe_int(pc_redirect_valid)}")

    target = safe_int(pc_redirect_target)
    if target is not None:
        dut._log.info(f"PC_REDIRECT_TARGET = 0x{target:08X}")

    next_pc = safe_int(ex_actual_next_pc)
    if next_pc is not None:
        dut._log.info(f"EX_ACTUAL_NEXT_PC = 0x{next_pc:08X}")

    dut._log.info("==================================")

    log_debug_state(dut)

    if last_pc is not None:
        raise AssertionError(
            f"Timeout esperando tohost después de "
            f"{max_cycles} ciclos. "
            f"Último PC observado: 0x{last_pc:08X}"
        )

    raise AssertionError(
        f"Timeout esperando tohost después de "
        f"{max_cycles} ciclos."
    )


@cocotb.test()
async def regression(dut):
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    test_name = os.getenv("TEST_NAME", "")
    dut._log.info(f"TEST_NAME = {test_name}")

    await apply_reset(dut)

    dut._log.info("DEBUG inicial después de reset:")
    log_debug_state(dut)

    if test_name.startswith("rv32ui-p-"):
        await wait_tohost(dut, max_cycles=20000)
        return

    if test_name == "TC_CSR_USE_NOP":
        await wait_tohost(dut, max_cycles=1000)
        return

    if test_name == "TC_UART_TIMEOUT_RECOVERY":
        dut._log.info("UART ready debe estar conectado a 1'b0 en el wrapper/BD")

        await ClockCycles(dut.clk, 100200)
        await ReadOnly()

        ram0 = read_ram_word(dut, 0)

        dut._log.info(f"RAM[0] = 0x{ram0:08X}")

        assert ram0 == 0x00000055, (
            f"ERROR: UART timeout recovery falló. "
            f"RAM[0]=0x{ram0:08X}, esperado 0x00000055"
        )

        dut._log.info("PASS: UART timeout liberó el stall y el core continuó")
        return

    for cycle in range(40):
        await ClockCycles(dut.clk, 1)
        await ReadOnly()
        log_pipeline_stall_state(dut, cycle)

    await ClockCycles(dut.clk, 260)
    await dump_ram(dut, words=12)

    ram0 = read_ram_word(dut, 0)

    expected_signatures = {
        "TC_CORE_KEY": 0xCAFE0001,
        "TC_LOAD_USE_UART_TIMER": 0xCAFE0002,
        "TC_FULL_PIPELINE_MMIO_WAIT": 0xCAFE0003,
    }

    if test_name in expected_signatures:
        expected = expected_signatures[test_name]

        assert ram0 == expected, (
            f"ERROR: {test_name} falló. "
            f"RAM[0]=0x{ram0:08X}, esperado=0x{expected:08X}"
        )

        dut._log.info(f"PASS: {test_name}")
        return

    dut._log.warning(
        "Test sin criterio de PASS definido. "
        "Solo se hizo dump de RAM."
    )
