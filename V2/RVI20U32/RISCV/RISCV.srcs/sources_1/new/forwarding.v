`timescale 1ns / 1ps

module forwarding(
    input  wire [4:0] ex_rs1,
    input  wire [4:0] ex_rs2,
    input  wire [1:0] ex_op_b_sel,

    // EX/MEM
    input  wire [4:0] mem_rd,
    input  wire       mem_rd_we,

    // MEM_STAGE_OUT
    input  wire [4:0] mem_stage_rd,
    input  wire       mem_stage_rd_we,

    // MEM/WB
    input  wire [4:0] wb_rd,
    input  wire       wb_rd_we,

    output reg  [1:0] forward_a,
    output reg  [1:0] forward_b
);

    localparam [1:0] B_RS2 = 2'd0;

    // 00 -> base_data
    // 01 -> EX/MEM
    // 10 -> MEM_STAGE_OUT
    // 11 -> MEM/WB

    always @(*) begin
        forward_a = 2'b00;
        forward_b = 2'b00;

        // A = rs1
        if (mem_rd_we && (mem_rd != 5'd0) && (mem_rd == ex_rs1))
            forward_a = 2'b01;
        else if (mem_stage_rd_we && (mem_stage_rd != 5'd0) && (mem_stage_rd == ex_rs1))
            forward_a = 2'b10;
        else if (wb_rd_we && (wb_rd != 5'd0) && (wb_rd == ex_rs1))
            forward_a = 2'b11;

        // B = rs2
        if (ex_op_b_sel == B_RS2) begin
            if (mem_rd_we && (mem_rd != 5'd0) && (mem_rd == ex_rs2))
                forward_b = 2'b01;
            else if (mem_stage_rd_we && (mem_stage_rd != 5'd0) && (mem_stage_rd == ex_rs2))
                forward_b = 2'b10;
            else if (wb_rd_we && (wb_rd != 5'd0) && (wb_rd == ex_rs2))
                forward_b = 2'b11;
        end
    end

endmodule