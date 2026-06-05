`timescale 1ns / 1ps

module csr_use_detection(
    input  wire        clk,
    input  wire        rst,

    input  wire        ex_valid,
    input  wire [31:0] ex_instr,

    input  wire        if_id_valid,
    input  wire [4:0]  if_id_rs1,
    input  wire [4:0]  if_id_rs2,
    input  wire        if_id_rs1_used,
    input  wire        if_id_rs2_used,

    output wire        pc_en,
    output wire        if_id_hold,
    output wire        id_ex_flush
);

    wire        ex_is_system;
    wire [2:0]  ex_funct3;
    wire [4:0]  ex_rd;
    wire        ex_is_csr;
    wire        hazard_now;

    reg  [2:0]  stall_cnt;

    assign ex_is_system = (ex_instr[6:0] == 7'b1110011);
    assign ex_funct3    = ex_instr[14:12];
    assign ex_rd        = ex_instr[11:7];

    assign ex_is_csr =
        ex_is_system &&
        (
            (ex_funct3 == 3'b001) ||
            (ex_funct3 == 3'b010) ||
            (ex_funct3 == 3'b011)
        );

    assign hazard_now =
        ex_valid &&
        ex_is_csr &&
        (ex_rd != 5'd0) &&
        if_id_valid &&
        (
            (if_id_rs1_used && (if_id_rs1 == ex_rd)) ||
            (if_id_rs2_used && (if_id_rs2 == ex_rd))
        );

    always @(posedge clk) begin
        if (rst) begin
            stall_cnt <= 3'd0;
        end
        else begin
            if (hazard_now) begin
                stall_cnt <= 3'd2;
            end
            else if (stall_cnt != 3'd0) begin
                stall_cnt <= stall_cnt - 3'd1;
            end
        end
    end

    assign pc_en       = (stall_cnt == 3'd0) && !hazard_now;
    assign if_id_hold  = (stall_cnt != 3'd0) || hazard_now;
    assign id_ex_flush = (stall_cnt != 3'd0) || hazard_now;

endmodule
