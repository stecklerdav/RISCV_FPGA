`timescale 1ns / 1ps

module csr_regfile_wb_mux (
    input  wire        normal_we,
    input  wire [4:0]  normal_rd,
    input  wire [31:0] normal_wdata,

    input  wire        csr_rd_we,
    input  wire [4:0]  csr_rd_addr,
    input  wire [31:0] csr_rd_data,

    output reg         final_we,
    output reg  [4:0]  final_rd,
    output reg  [31:0] final_wdata
);

    always @(*) begin
        final_we    = 1'b0;
        final_rd    = 5'd0;
        final_wdata = 32'h0000_0000;

        if (csr_rd_we && (csr_rd_addr != 5'd0)) begin
            final_we    = 1'b1;
            final_rd    = csr_rd_addr;
            final_wdata = csr_rd_data;
        end
        else if (normal_we && (normal_rd != 5'd0)) begin
            final_we    = 1'b1;
            final_rd    = normal_rd;
            final_wdata = normal_wdata;
        end
    end

endmodule