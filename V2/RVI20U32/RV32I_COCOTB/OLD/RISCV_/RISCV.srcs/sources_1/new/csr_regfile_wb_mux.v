`timescale 1ns / 1ps

module csr_regfile_wb_mux (
    input  wire        normal_we,
    input  wire [4:0]  normal_rd,
    input  wire [31:0] normal_wdata,

    input  wire        csr_rd_we,
    input  wire [4:0]  csr_rd_addr,
    input  wire [31:0] csr_rd_data,

    output wire        final_we,
    output wire [4:0]  final_rd,
    output wire [31:0] final_wdata
);

    wire csr_write_valid;

    assign csr_write_valid =
        csr_rd_we && (csr_rd_addr != 5'd0);

    assign final_we =
        csr_write_valid || normal_we;

    assign final_rd =
        csr_write_valid ? csr_rd_addr : normal_rd;

    assign final_wdata =
        csr_write_valid ? csr_rd_data : normal_wdata;

endmodule