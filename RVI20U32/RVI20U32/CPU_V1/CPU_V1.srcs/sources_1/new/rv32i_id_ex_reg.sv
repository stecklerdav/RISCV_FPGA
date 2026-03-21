`timescale 1ns / 1ps

`include "rv32i_id_ex_types.sv"

module rv32i_id_ex_reg (
    input  logic             clk,
    input  logic             rst,

    // Control pipeline
    input  logic             stall,
    input  logic             flush,

    // Entrada desde ID
    input  rv32i_id_ex_bus_t id_in,

    // Salida hacia EX
    output rv32i_id_ex_bus_t ex_out
);

    rv32i_id_ex_bus_t ex_reg;

    always_ff @(posedge clk) begin
        if (rst) begin
            ex_reg <= '0;
        end
        else if (flush) begin
            ex_reg <= '0;
        end
        else if (stall) begin
            ex_reg <= ex_reg;
        end
        else begin
            ex_reg <= id_in;
        end
    end

    assign ex_out = ex_reg;

endmodule