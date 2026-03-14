`timescale 1ns / 1ps

module rv32i_operand_a_mux (
    input  wire [31:0] rs1_data,
    input  wire [31:0] pc,
    input  wire [1:0]  op_a_sel,
    output reg  [31:0] operand_a
);

    localparam OP_A_RS1  = 2'b00;
    localparam OP_A_PC   = 2'b01;
    localparam OP_A_ZERO = 2'b10;

    always @(*) begin
        case (op_a_sel)
            OP_A_RS1:  operand_a = rs1_data;
            OP_A_PC:   operand_a = pc;
            OP_A_ZERO: operand_a = 32'd0;
            default:   operand_a = rs1_data;
        endcase
    end

endmodule