`timescale 1ns/1ps

module if_id_reg (
    input  wire        clk,
    input  wire        rst,

    input  wire        enable,
    input  wire        flush,

    input  wire [31:0] if_pc,
    input  wire [31:0] if_pc_plus4,
    input  wire [31:0] if_instr,

    output reg  [31:0] id_pc,
    output reg  [31:0] id_pc_plus4,
    output reg  [31:0] id_instr
);

    localparam [31:0] NOP = 32'h00000013; // addi x0, x0, 0

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            id_pc       <= 32'h00000000;
            id_pc_plus4 <= 32'h00000000;
            id_instr    <= NOP;
        end
        else if (flush) begin
            id_pc       <= 32'h00000000;
            id_pc_plus4 <= 32'h00000000;
            id_instr    <= NOP;
        end
        else if (enable) begin
            id_pc       <= if_pc;
            id_pc_plus4 <= if_pc_plus4;
            id_instr    <= if_instr;
        end
    end

endmodule