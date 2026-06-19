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
        if (rst) begin
            pc_d                <= 32'h0000_0000;
            pc4_d               <= 32'h0000_0000;
            pred_d              <= 32'h0000_0000;
            valid_d             <= 1'b0;

            id_pc_out           <= 32'h0000_0000;
            id_pc4_out          <= 32'h0000_0000;
            id_instr_out        <= RV32I_NOP;
            id_pred_next_pc_out <= 32'h0000_0000;
            id_valid_out        <= 1'b0;
        end
        else if (flush) begin
            pc_d                <= 32'h0000_0000;
            pc4_d               <= 32'h0000_0000;
            pred_d              <= 32'h0000_0000;
            valid_d             <= 1'b0;

            id_pc_out           <= 32'h0000_0000;
            id_pc4_out          <= 32'h0000_0000;
            id_instr_out        <= RV32I_NOP;
            id_pred_next_pc_out <= 32'h0000_0000;
            id_valid_out        <= 1'b0;
        end
        else if (hold) begin
            pc_d                <= pc_d;
            pc4_d               <= pc4_d;
            pred_d              <= pred_d;
            valid_d             <= valid_d;

            id_pc_out           <= id_pc_out;
            id_pc4_out          <= id_pc4_out;
            id_instr_out        <= id_instr_out;
            id_pred_next_pc_out <= id_pred_next_pc_out;
            id_valid_out        <= id_valid_out;
        end
        else begin
            pc_d    <= if_pc_in;
            pc4_d   <= if_pc4_in;
            pred_d  <= if_pred_next_pc_in;
            valid_d <= if_valid_in;

            id_pc_out           <= pc_d;
            id_pc4_out          <= pc4_d;
            id_pred_next_pc_out <= pred_d;
            id_valid_out        <= valid_d;

            if (valid_d)
                id_instr_out <= if_instr_in;
            else
                id_instr_out <= RV32I_NOP;
        end
    end

endmodule
