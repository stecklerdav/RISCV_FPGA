`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// RV32I ID/EX Pipeline Register
//
// Pensado para pipeline con soporte de stall/flush.
// Compatible con frontend donde la BRAM de instrucciones tiene latencia de 1 ciclo.
// Ese detalle no cambia demasiado este bloque, pero sí hace importante que este
// registro pueda:
//   1) congelarse con stall
//   2) insertar bubble con flush
//
// Convención:
// - stall = 1  --> mantener valores actuales
// - flush = 1  --> insertar bubble/NOP
// - flush tiene prioridad sobre stall
//////////////////////////////////////////////////////////////////////////////////

module rv32i_id_ex_reg (
    input  wire        clk,
    input  wire        rst,

    // Control pipeline
    input  wire        stall,
    input  wire        flush,

    // =========================
    // Entradas desde ID
    // =========================

    // Datos
    input  wire [31:0] id_pc,
    input  wire [31:0] id_pc_plus4,
    input  wire [31:0] id_rs1_data,
    input  wire [31:0] id_rs2_data,
    input  wire [31:0] id_imm,
    input  wire [4:0]  id_rs1,
    input  wire [4:0]  id_rs2,
    input  wire [4:0]  id_rd,

    // Control EX
    input  wire [3:0]  id_alu_op,
    input  wire [1:0]  id_op_a_sel,   // 00=rs1, 01=pc, 10=zero, 11=reserved
    input  wire [1:0]  id_op_b_sel,   // 00=rs2, 01=imm, 10=4, 11=reserved

    input  wire        id_branch_en,
    input  wire [2:0]  id_branch_funct3,
    input  wire        id_jal,
    input  wire        id_jalr,

    // Control MEM
    input  wire        id_mem_re,
    input  wire        id_mem_we,
    input  wire [1:0]  id_mem_size,      // 00=byte, 01=half, 10=word
    input  wire        id_mem_unsigned,  // para loads unsigned

    // Control WB
    input  wire        id_rd_we,
    input  wire [1:0]  id_wb_sel,        // 00=ALU, 01=MEM, 10=PC+4

    // =========================
    // Salidas hacia EX
    // =========================

    // Datos
    output reg  [31:0] ex_pc,
    output reg  [31:0] ex_pc_plus4,
    output reg  [31:0] ex_rs1_data,
    output reg  [31:0] ex_rs2_data,
    output reg  [31:0] ex_imm,
    output reg  [4:0]  ex_rs1,
    output reg  [4:0]  ex_rs2,
    output reg  [4:0]  ex_rd,

    // Control EX
    output reg  [3:0]  ex_alu_op,
    output reg  [1:0]  ex_op_a_sel,
    output reg  [1:0]  ex_op_b_sel,

    output reg         ex_branch_en,
    output reg  [2:0]  ex_branch_funct3,
    output reg         ex_jal,
    output reg         ex_jalr,

    // Control MEM
    output reg         ex_mem_re,
    output reg         ex_mem_we,
    output reg  [1:0]  ex_mem_size,
    output reg         ex_mem_unsigned,

    // Control WB
    output reg         ex_rd_we,
    output reg  [1:0]  ex_wb_sel
);

    // =========================================================================
    // Registro secuencial
    // =========================================================================
    always @(posedge clk) begin
        if (rst) begin
            // -------------------------
            // Bubble/NOP en reset
            // -------------------------
            ex_pc             <= 32'd0;
            ex_pc_plus4       <= 32'd0;
            ex_rs1_data       <= 32'd0;
            ex_rs2_data       <= 32'd0;
            ex_imm            <= 32'd0;
            ex_rs1            <= 5'd0;
            ex_rs2            <= 5'd0;
            ex_rd             <= 5'd0;

            ex_alu_op         <= 4'd0;
            ex_op_a_sel       <= 2'd0;
            ex_op_b_sel       <= 2'd0;

            ex_branch_en      <= 1'b0;
            ex_branch_funct3  <= 3'd0;
            ex_jal            <= 1'b0;
            ex_jalr           <= 1'b0;

            ex_mem_re         <= 1'b0;
            ex_mem_we         <= 1'b0;
            ex_mem_size       <= 2'd0;
            ex_mem_unsigned   <= 1'b0;

            ex_rd_we          <= 1'b0;
            ex_wb_sel         <= 2'd0;
        end
        else if (flush) begin
            // -------------------------
            // Insertar burbuja
            // Muy importante para:
            // - branch tomado
            // - jal / jalr
            // - hazards donde quieras matar la instrucción
            // -------------------------
            ex_pc             <= 32'd0;
            ex_pc_plus4       <= 32'd0;
            ex_rs1_data       <= 32'd0;
            ex_rs2_data       <= 32'd0;
            ex_imm            <= 32'd0;
            ex_rs1            <= 5'd0;
            ex_rs2            <= 5'd0;
            ex_rd             <= 5'd0;

            ex_alu_op         <= 4'd0;
            ex_op_a_sel       <= 2'd0;
            ex_op_b_sel       <= 2'd0;

            ex_branch_en      <= 1'b0;
            ex_branch_funct3  <= 3'd0;
            ex_jal            <= 1'b0;
            ex_jalr           <= 1'b0;

            ex_mem_re         <= 1'b0;
            ex_mem_we         <= 1'b0;
            ex_mem_size       <= 2'd0;
            ex_mem_unsigned   <= 1'b0;

            ex_rd_we          <= 1'b0;
            ex_wb_sel         <= 2'd0;
        end
        else if (stall) begin
            // -------------------------
            // Congelar registro
            // -------------------------
            ex_pc             <= ex_pc;
            ex_pc_plus4       <= ex_pc_plus4;
            ex_rs1_data       <= ex_rs1_data;
            ex_rs2_data       <= ex_rs2_data;
            ex_imm            <= ex_imm;
            ex_rs1            <= ex_rs1;
            ex_rs2            <= ex_rs2;
            ex_rd             <= ex_rd;

            ex_alu_op         <= ex_alu_op;
            ex_op_a_sel       <= ex_op_a_sel;
            ex_op_b_sel       <= ex_op_b_sel;

            ex_branch_en      <= ex_branch_en;
            ex_branch_funct3  <= ex_branch_funct3;
            ex_jal            <= ex_jal;
            ex_jalr           <= ex_jalr;

            ex_mem_re         <= ex_mem_re;
            ex_mem_we         <= ex_mem_we;
            ex_mem_size       <= ex_mem_size;
            ex_mem_unsigned   <= ex_mem_unsigned;

            ex_rd_we          <= ex_rd_we;
            ex_wb_sel         <= ex_wb_sel;
        end
        else begin
            // -------------------------
            // Captura normal ID -> EX
            // -------------------------
            ex_pc             <= id_pc;
            ex_pc_plus4       <= id_pc_plus4;
            ex_rs1_data       <= id_rs1_data;
            ex_rs2_data       <= id_rs2_data;
            ex_imm            <= id_imm;
            ex_rs1            <= id_rs1;
            ex_rs2            <= id_rs2;
            ex_rd             <= id_rd;

            ex_alu_op         <= id_alu_op;
            ex_op_a_sel       <= id_op_a_sel;
            ex_op_b_sel       <= id_op_b_sel;

            ex_branch_en      <= id_branch_en;
            ex_branch_funct3  <= id_branch_funct3;
            ex_jal            <= id_jal;
            ex_jalr           <= id_jalr;

            ex_mem_re         <= id_mem_re;
            ex_mem_we         <= id_mem_we;
            ex_mem_size       <= id_mem_size;
            ex_mem_unsigned   <= id_mem_unsigned;

            ex_rd_we          <= id_rd_we;
            ex_wb_sel         <= id_wb_sel;
        end
    end

endmodule