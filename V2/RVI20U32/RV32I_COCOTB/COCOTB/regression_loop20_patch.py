# Agregar después de safe_int()

def fmt_hex_obj(obj):
    val = safe_int(obj)
    if val is None:
        return "NA"
    return f"0x{val:08X}"


def fmt_dec_obj(obj):
    val = safe_int(obj)
    if val is None:
        return "NA"
    return str(val)


def fmt_hex_val(val):
    if val is None:
        return "NA"
    return f"0x{val:08X}"


# Reemplazar el bloque LOOP20 por:

if ex_pc_val in [0x8000036C, 0x80000370, 0x80000380, 0x80000388]:
    x1_sig = find_child_by_name(dut, "regfile_0_debug_x1")
    x2_sig = find_child_by_name(dut, "regfile_0_debug_x2")
    x4_sig = find_child_by_name(dut, "regfile_0_debug_x4")
    x5_sig = find_child_by_name(dut, "regfile_0_debug_x5")

    ex_rs1_data = find_child_by_name(dut, "forward_mux_0_out_data")
    ex_rs2_data = find_child_by_name(dut, "forward_mux_1_out_data")

    dut._log.info(
        f"LOOP20_REGS "
        f"cycle={cycle} "
        f"EX_PC={fmt_hex_val(ex_pc_val)} "
        f"EX_INSTR={fmt_hex_obj(ex_instr)} "
        f"x1_ra={fmt_hex_obj(x1_sig)} "
        f"x2_sp={fmt_hex_obj(x2_sig)} "
        f"x4_tp={fmt_hex_obj(x4_sig)} "
        f"x5_t0={fmt_hex_obj(x5_sig)} "
        f"EX_RS1={fmt_hex_obj(ex_rs1_data)} "
        f"EX_RS2={fmt_hex_obj(ex_rs2_data)} "
        f"FWD_A={fmt_dec_obj(fwd_a)} "
        f"FWD_B={fmt_dec_obj(fwd_b)} "
        f"REDIR={fmt_dec_obj(pc_redirect_valid)} "
        f"TARGET={fmt_hex_obj(pc_redirect_target)}"
    )

# Eliminar el bloque:
# try:
#     ...
# except Exception as e:
#     dut._log.info(f"LOOP20 DEBUG ERROR: {e}")
