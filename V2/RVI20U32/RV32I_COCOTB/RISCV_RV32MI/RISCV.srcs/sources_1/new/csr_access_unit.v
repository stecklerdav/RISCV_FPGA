`timescale 1ns / 1ps

module csr_access_unit (
    input  wire        ex_valid,

    input  wire        is_csrrw,
    input  wire        is_csrrs,
    input  wire        is_csrrc,

    input  wire        is_csrrwi,
    input  wire        is_csrrsi,
    input  wire        is_csrrci,

    input  wire [4:0]  csr_rs1,
    input  wire [4:0]  csr_rd,

    input  wire [31:0] rs1_data,
    input  wire [31:0] csr_rdata,

    output wire        csr_we,
    output wire [31:0] csr_wdata,

    output wire        csr_rd_we,
    output wire [4:0]  csr_rd_addr,
    output wire [31:0] csr_rd_data
);

    wire csr_instr;
    wire rs1_is_zero;
    wire zimm_is_zero;
    wire csr_uses_imm;
    wire [31:0] csr_operand;

    assign csr_instr =
        is_csrrw  |
        is_csrrs  |
        is_csrrc  |
        is_csrrwi |
        is_csrrsi |
        is_csrrci;

    assign rs1_is_zero = (csr_rs1 == 5'd0);
    assign zimm_is_zero = (csr_rs1 == 5'd0);

    assign csr_uses_imm = is_csrrwi | is_csrrsi | is_csrrci;

    assign csr_operand = csr_uses_imm ? {27'b0, csr_rs1} : rs1_data;

    assign csr_wdata =
        (is_csrrw  | is_csrrwi) ? csr_operand :
        (is_csrrs  | is_csrrsi) ? (csr_rdata | csr_operand) :
        (is_csrrc  | is_csrrci) ? (csr_rdata & ~csr_operand) :
                                   32'h0000_0000;

    assign csr_we =
        ex_valid &&
        (
            is_csrrw  ||
            is_csrrwi ||
            (is_csrrs  && !rs1_is_zero) ||
            (is_csrrc  && !rs1_is_zero) ||
            (is_csrrsi && !zimm_is_zero) ||
            (is_csrrci && !zimm_is_zero)
        );

    assign csr_rd_we =
        ex_valid &&
        csr_instr &&
        (csr_rd != 5'd0);

    assign csr_rd_addr = csr_rd;

    // RISC-V: rd recibe el valor viejo del CSR
    assign csr_rd_data = csr_rdata;

endmodule