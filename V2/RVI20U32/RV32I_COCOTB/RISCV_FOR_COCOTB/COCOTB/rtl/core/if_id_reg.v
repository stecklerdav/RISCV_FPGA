`timescale 1ns/1ps

module if_id_reg (
    input  wire        clk,
    input  wire        rst,

    input  wire [31:0] if_pc_in,
    input  wire [31:0] if_pc4_in,
    input  wire [31:0] if_instr_in,
    input  wire        if_valid_in,

    input  wire [31:0] if_pred_next_pc_in,

    input  wire        flush,
    input  wire        hold,

    output reg  [31:0] id_pc_out,
    output reg  [31:0] id_pc4_out,
    output reg  [31:0] id_instr_out,
    output reg         id_valid_out,

    output reg  [31:0] id_pred_next_pc_out
);

    localparam [31:0] RV32I_NOP = 32'h00000013;

    reg [31:0] pc_d;
    reg [31:0] pc4_d;
    reg [31:0] pred_d;
    reg        valid_d;

    always @(posedge clk) begin
        if (rst || flush) begin
            pc_d                <= 32'b0;
            pc4_d               <= 32'b0;
            pred_d              <= 32'b0;
            valid_d             <= 1'b0;

            id_pc_out           <= 32'b0;
            id_pc4_out          <= 32'b0;
            id_instr_out        <= RV32I_NOP;
            id_pred_next_pc_out <= 32'b0;
            id_valid_out        <= 1'b0;
        end
        else if (hold) begin
            // HOLD
        end
        else begin
            pc_d    <= if_pc_in;
            pc4_d   <= if_pc4_in;
            pred_d  <= if_pred_next_pc_in;
            valid_d <= if_valid_in;

            id_pc_out           <= pc_d;
            id_pc4_out          <= pc4_d;
            id_instr_out        <= if_instr_in;
            id_pred_next_pc_out <= pred_d;
            id_valid_out        <= valid_d;
        end
    end

endmodule
