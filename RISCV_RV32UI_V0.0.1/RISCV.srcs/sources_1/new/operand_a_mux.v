`timescale 1ns / 1ps

module operand_a_mux (
    input  wire [31:0] rs1_data,
    input  wire [31:0] pc,
    input  wire [1:0]  op_a_sel,
    output reg  [31:0] operand_a
);

    // Encoding debe coincidir con control.v
    localparam [1:0] A_RS1  = 2'd0;
    localparam [1:0] A_PC   = 2'd1;
    localparam [1:0] A_ZERO = 2'd2;

    always @(*) begin
        case (op_a_sel)
            A_RS1:  operand_a = rs1_data;
            A_PC:   operand_a = pc;
            A_ZERO: operand_a = 32'd0;
            default: operand_a = rs1_data;
        endcase
    end

endmodule