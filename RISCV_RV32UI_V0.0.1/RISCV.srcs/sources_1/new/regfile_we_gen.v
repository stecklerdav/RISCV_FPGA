`timescale 1ns / 1ps

module regfile_we_gen (
    input  wire        wb_valid,   // instrucción válida en WB
    input  wire        wb_rd_we,   // control: esta instrucción escribe rd
    input  wire [4:0]  wb_rd,      // registro destino

    output wire        regfile_we  // write enable final hacia el regfile
);

    // Write enable final:
    // - instrucción válida
    // - instrucción con write-back
    // - no escribir x0
    assign regfile_we = wb_valid & wb_rd_we & (wb_rd != 5'd0);

endmodule