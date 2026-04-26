`timescale 1ns / 1ps

module forwarding(
    input  wire [4:0] ex_rs1,
    input  wire [4:0] ex_rs2,
    input  wire [1:0] ex_op_b_sel,

    // EX/MEM
    input  wire [4:0] mem_rd,
    input  wire       mem_rd_we,
    input  wire       mem_is_load,   // NUEVO: 1 si EX/MEM es un load

    // MEM_STAGE_OUT
    input  wire [4:0] mem_stage_rd,
    input  wire       mem_stage_rd_we,

    // MEM/WB
    input  wire [4:0] wb_rd,
    input  wire       wb_rd_we,

    output reg  [1:0] forward_a,
    output reg  [1:0] forward_b,
    output reg  [1:0] forward_store
);

    localparam [1:0] B_RS2 = 2'd0;

    // forward_sel:
    // 00 -> base_data
    // 01 -> EX/MEM ALU result
    // 10 -> MEM_STAGE_OUT data
    // 11 -> MEM/WB writeback data

    wire mem_can_forward_exmem;

    // EX/MEM solo puede forwardear directamente si NO es load.
    // Para load, EX/MEM tiene la dirección, no el dato cargado.
    assign mem_can_forward_exmem = mem_rd_we & ~mem_is_load;

    always @(*) begin
        forward_a     = 2'b00;
        forward_b     = 2'b00;
        forward_store = 2'b00;

        // --------------------------------------------------------
        // Forwarding para operando A / rs1
        // --------------------------------------------------------
        if (mem_can_forward_exmem &&
            (mem_rd != 5'd0) &&
            (mem_rd == ex_rs1)) begin

            forward_a = 2'b01;

        end else if (mem_stage_rd_we &&
                     (mem_stage_rd != 5'd0) &&
                     (mem_stage_rd == ex_rs1)) begin

            forward_a = 2'b10;

        end else if (wb_rd_we &&
                     (wb_rd != 5'd0) &&
                     (wb_rd == ex_rs1)) begin

            forward_a = 2'b11;
        end

        // --------------------------------------------------------
        // Forwarding para operando B / rs2 usado por ALU
        // Solo aplica cuando op_b_sel == B_RS2.
        // Para add/sub/and/or/etc sí.
        // Para lw/sw/addi NO, porque ALU B usa inmediato.
        // --------------------------------------------------------
        if (ex_op_b_sel == B_RS2) begin
            if (mem_can_forward_exmem &&
                (mem_rd != 5'd0) &&
                (mem_rd == ex_rs2)) begin

                forward_b = 2'b01;

            end else if (mem_stage_rd_we &&
                         (mem_stage_rd != 5'd0) &&
                         (mem_stage_rd == ex_rs2)) begin

                forward_b = 2'b10;

            end else if (wb_rd_we &&
                         (wb_rd != 5'd0) &&
                         (wb_rd == ex_rs2)) begin

                forward_b = 2'b11;
            end
        end

        // --------------------------------------------------------
        // Forwarding para STORE DATA / rs2
        //
        // sw x12, 8(x1)
        //
        // ALU:
        //   rs1 + imm
        //
        // Store data:
        //   rs2 = x12
        //
        // Por eso NO depende de ex_op_b_sel.
        // --------------------------------------------------------
        if (mem_can_forward_exmem &&
            (mem_rd != 5'd0) &&
            (mem_rd == ex_rs2)) begin

            forward_store = 2'b01;

        end else if (mem_stage_rd_we &&
                     (mem_stage_rd != 5'd0) &&
                     (mem_stage_rd == ex_rs2)) begin

            forward_store = 2'b10;

        end else if (wb_rd_we &&
                     (wb_rd != 5'd0) &&
                     (wb_rd == ex_rs2)) begin

            forward_store = 2'b11;
        end
    end

endmodule