`timescale 1ns/1ps

module pc_unit #(
    parameter [31:0] RESET_PC = 32'h0000_0000
)(
    input  wire        rst,
    input  wire        clk,
    input  wire        pc_en,

    output reg  [31:0] pc,
    output wire [31:0] pc_plus4
);

    reg [31:0] pc_next;

    assign pc_plus4 = pc + 32'd4;

    always @(*) begin
        pc_next = pc_plus4;
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc <= RESET_PC;
        end
        else if (pc_en) begin
            pc <= pc_next;
        end
    end

endmodule