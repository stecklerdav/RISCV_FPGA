`timescale 1ns / 1ps

module csr_access_unit (
    input  wire        ex_valid,

    input  wire        is_csrrw,
    input  wire        is_csrrs,
    input  wire        is_csrrc,

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

    assign csr_instr   = is_csrrw | is_csrrs | is_csrrc;
    assign rs1_is_zero = (csr_rs1 == 5'd0);

    assign csr_wdata =
        is_csrrw ? rs1_data :
        is_csrrs ? (csr_rdata | rs1_data) :
        is_csrrc ? (csr_rdata & ~rs1_data) :
                   32'h0000_0000;

    assign csr_we =
        ex_valid &&
        (
            is_csrrw ||
            (is_csrrs && !rs1_is_zero) ||
            (is_csrrc && !rs1_is_zero)
        );

    assign csr_rd_we =
        ex_valid &&
        csr_instr &&
        (csr_rd != 5'd0);

    assign csr_rd_addr = csr_rd;

    // RISC-V: rd recibe el valor viejo del CSR
    assign csr_rd_data = csr_rdata;

endmodule