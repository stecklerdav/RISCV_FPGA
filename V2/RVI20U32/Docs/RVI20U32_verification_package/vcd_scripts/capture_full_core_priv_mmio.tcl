# Generic Vivado xsim VCD capture script
# Ajusta TOP y PATH_CPU a tu jerarquía real si cambió.
set TOP /BASIC_wrapper/BASIC_i
set CPU_PAT */Core_RV32I/*

open_vcd ./waves/test.vcd

# Commit/arquitectural trace
foreach pat {
    */commit_valid
    */commit_pc*
    */commit_instr*
    */commit_rd_we*
    */commit_rd_addr*
    */commit_rd_data*
    */wb_valid*
    */wb_pc*
    */wb_instr*
    */wb_rd*
    */wb_wdata*
} {
    set objs [get_objects -r $pat]
    if {[llength $objs] > 0} { log_vcd $objs } else { puts "No encontrado: $pat" }
}

# Pipeline control
foreach pat {
    */stall*
    */flush*
    */pc*
    */if_id_reg*/*
    */id_ex_reg*/*
    */ex_mem_reg*/*
    */mem_wb_reg*/*
} {
    set objs [get_objects -r $pat]
    if {[llength $objs] > 0} { log_vcd $objs } else { puts "No encontrado: $pat" }
}

# CSR/trap
foreach pat {
    */csr*/*
    */trap*/*
    */mstatus*
    */mtvec*
    */mepc*
    */mcause*
    */mtval*
    */mret*
    */illegal*
    */ecall*
} {
    set objs [get_objects -r $pat]
    if {[llength $objs] > 0} { log_vcd $objs } else { puts "No encontrado: $pat" }
}

# Memory/MMIO/peripherals
foreach pat {
    */dmem*
    */mmio*
    */ram*
    */gpio*
    */uart*
    */cpu_ready*
    */cpu_error*
} {
    set objs [get_objects -r $pat]
    if {[llength $objs] > 0} { log_vcd $objs } else { puts "No encontrado: $pat" }
}

run 50 us
flush_vcd
close_vcd
