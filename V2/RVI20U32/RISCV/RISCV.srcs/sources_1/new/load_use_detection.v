`timescale 1ns / 1ps

module load_use_detection (
    // Instrucción que está en ID/EX
    input  wire        id_ex_valid,
    input  wire        id_ex_mem_re,      // 1 si la instrucción en EX es load
    input  wire [4:0]  id_ex_rd,

    // Instrucción que está en IF/ID
    input  wire        if_id_valid,
    input  wire [4:0]  if_id_rs1,
    input  wire [4:0]  if_id_rs2,
    input  wire        if_id_rs1_used,
    input  wire        if_id_rs2_used,

    // Flush por branch/jal/jalr tomado en EX
    input  wire        ex_flush_req,

    // Salidas de control
    output reg         load_use_hazard,
    output reg         pc_en,
    output reg         if_id_hold,
    output reg         id_ex_flush
);

    always @(*) begin
        load_use_hazard = 1'b0;

        pc_en       = 1'b1;
        if_id_hold  = 1'b0;
        id_ex_flush = 1'b0;

        // ------------------------------------------------------------
        // Load-use hazard:
        //
        //   lw  x5, 0(x1)
        //   add x6, x5, x2
        //
        // La instrucción dependiente debe esperar 1 ciclo.
        // ------------------------------------------------------------
        if (id_ex_valid &&
            id_ex_mem_re &&
            (id_ex_rd != 5'd0) &&
            if_id_valid &&
            (
                (if_id_rs1_used && (if_id_rs1 == id_ex_rd)) ||
                (if_id_rs2_used && (if_id_rs2 == id_ex_rd))
            )
        ) begin
            load_use_hazard = 1'b1;

            // Congelar PC e IF/ID
            pc_en      = 1'b0;
            if_id_hold = 1'b1;

            // Meter burbuja en ID/EX
            id_ex_flush = 1'b1;
        end

        // ------------------------------------------------------------
        // Flush por branch/jump tomado.
        // Prioridad sobre load-use.
        // ------------------------------------------------------------
        if (ex_flush_req) begin
            pc_en       = 1'b1;
            if_id_hold  = 1'b0;
            id_ex_flush = 1'b1;
        end
    end

endmodule