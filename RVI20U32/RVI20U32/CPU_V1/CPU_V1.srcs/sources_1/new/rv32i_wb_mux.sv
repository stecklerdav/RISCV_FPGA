`timescale 1ns / 1ps

module rv32i_wb_mux(
    input  logic [1:0]  wb_sel,
    input  logic [31:0] alu_y,
    input  logic [31:0] load_data,
    input  logic [31:0] pc_plus4,
    input  logic [31:0] imm_u,
    output logic [31:0] rd_wdata
);

    localparam logic [1:0] WB_ALU = 2'd0;
    localparam logic [1:0] WB_MEM = 2'd1;
    localparam logic [1:0] WB_PC4 = 2'd2;
    localparam logic [1:0] WB_IMM = 2'd3;

    always_comb begin
        unique case (wb_sel)
            WB_ALU: rd_wdata = alu_y;
            WB_MEM: rd_wdata = load_data;
            WB_PC4: rd_wdata = pc_plus4;
            WB_IMM: rd_wdata = imm_u;
            default: rd_wdata = alu_y;
        endcase
    end

endmodule
