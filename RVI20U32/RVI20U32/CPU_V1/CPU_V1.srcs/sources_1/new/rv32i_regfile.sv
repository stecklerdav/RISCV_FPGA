`timescale 1ns / 1ps
import rv32i_regfile_types_pkg::*;

module rv32i_regfile (
    input  logic                  clk,

    // Lecturas
    input  rv32i_regfile_rd_bus_t rd_in,
    output rv32i_regfile_out_bus_t rd_out,

    // Escritura
    input  rv32i_regfile_wr_bus_t wr_in
);

    logic [31:0] regs [0:31];
    integer i;

    rv32i_regfile_out_bus_t rd_out_r;

    // Inicialización (solo simulación)
    initial begin
        for (i = 0; i < 32; i = i + 1)
            regs[i] = 32'b0;
    end

    // Lectura combinacional
    always_comb begin
        rd_out_r.rs1_rdata = (rd_in.rs1_addr == 5'd0) ? 32'b0 : regs[rd_in.rs1_addr];
        rd_out_r.rs2_rdata = (rd_in.rs2_addr == 5'd0) ? 32'b0 : regs[rd_in.rs2_addr];
    end

    // Escritura síncrona
    always_ff @(posedge clk) begin
        if (wr_in.rd_we && (wr_in.rd_addr != 5'd0))
            regs[wr_in.rd_addr] <= wr_in.rd_wdata;
    end

    assign rd_out = rd_out_r;

endmodule