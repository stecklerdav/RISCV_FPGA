`timescale 1ns / 1ps

module stack_unit (
    input  wire        clk,
    input  wire        reset,

    input  wire        call_en,
    input  wire        ret_en,
    input  wire        jump_en,

    input  wire [15:0] pc_next,
    input  wire [15:0] pc_target,

    output reg  [15:0] pc_out
);

    reg [15:0] stack_mem [0:7];
    reg [2:0]  sp;

    always @(posedge clk) begin
        if (reset) begin
            sp     <= 3'd7;        // stack vacía (top)
            pc_out <= 16'd0;       // PC inicial
        end else begin
            // PRIORIDAD DE CONTROL DEL PC
            if (ret_en) begin
                pc_out <= stack_mem[sp];
                sp     <= sp + 1;
            end
            else if (call_en) begin
                sp <= sp - 1;
                stack_mem[sp - 1] <= pc_next;
                pc_out <= pc_target;
            end
            else if (jump_en) begin
                pc_out <= pc_target;
            end
            else begin
                pc_out <= pc_next; // ejecución normal
            end
        end
    end

endmodule
