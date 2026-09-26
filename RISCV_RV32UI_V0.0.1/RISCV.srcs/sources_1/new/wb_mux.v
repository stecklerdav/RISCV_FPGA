`timescale 1ns / 1ps

module wb_mux(
    input  [2:0]  wb_sel,

    input  [31:0] alu_y,
    input  [31:0] load_data,
    input  [31:0] pc_plus4,
    input  [31:0] imm_u,

    output reg [31:0] rd_wdata
);

    localparam [2:0] WB_ALU = 3'd0;
    localparam [2:0] WB_MEM = 3'd1;
    localparam [2:0] WB_PC4 = 3'd2;
    localparam [2:0] WB_IMM = 3'd3;

    always @(*) begin
        case (wb_sel)
            WB_ALU: rd_wdata = alu_y;
            WB_MEM: rd_wdata = load_data;
            WB_PC4: rd_wdata = pc_plus4;
            WB_IMM: rd_wdata = imm_u;
            default: rd_wdata = alu_y;
        endcase
    end

endmodule