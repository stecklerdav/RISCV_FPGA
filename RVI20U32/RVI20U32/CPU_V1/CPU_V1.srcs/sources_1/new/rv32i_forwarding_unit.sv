`timescale 1ns / 1ps

module rv32i_forwarding_unit (
    input  logic [4:0] ex_rs1,
    input  logic [4:0] ex_rs2,

    input  logic [4:0] mem_rd,
    input  logic       mem_rd_we,

    input  logic [4:0] wb_rd,
    input  logic       wb_rd_we,

    output logic [1:0] forward_a,
    output logic [1:0] forward_b
);

    always_comb begin
        // Default: sin forwarding
        forward_a = 2'b00;
        forward_b = 2'b00;

        // ------------------------------------------------------------
        // Forward A
        // Prioridad: EX/MEM sobre MEM/WB
        // ------------------------------------------------------------
        if (mem_rd_we && (mem_rd != 5'd0) && (mem_rd == ex_rs1)) begin
            forward_a = 2'b01;
        end
        else if (wb_rd_we && (wb_rd != 5'd0) && (wb_rd == ex_rs1)) begin
            forward_a = 2'b10;
        end

        // ------------------------------------------------------------
        // Forward B
        // Prioridad: EX/MEM sobre MEM/WB
        // ------------------------------------------------------------
        if (mem_rd_we && (mem_rd != 5'd0) && (mem_rd == ex_rs2)) begin
            forward_b = 2'b01;
        end
        else if (wb_rd_we && (wb_rd != 5'd0) && (wb_rd == ex_rs2)) begin
            forward_b = 2'b10;
        end
    end

endmodule