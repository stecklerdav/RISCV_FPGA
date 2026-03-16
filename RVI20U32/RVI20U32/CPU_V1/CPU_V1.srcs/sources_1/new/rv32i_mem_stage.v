`timescale 1ns/1ps
module rv32i_mem_stage (

    input  wire         clk,
    input  wire         rst,

    // from EX/MEM
    input  wire [31:0]  mem_alu_result,
    input  wire [31:0]  mem_store_data,
    input  wire [31:0]  mem_pc_plus4,
    input  wire [31:0]  mem_imm_u,        // NUEVO
    input  wire [4:0]   mem_rd,
    input  wire         mem_rd_we,        // NUEVO

    input  wire         mem_mem_re,
    input  wire         mem_mem_we,
    input  wire [1:0]   mem_mem_size,
    input  wire         mem_mem_unsigned,
    input  wire [1:0]   mem_wb_sel,

    // Data memory interface
    output wire [31:0]  dmem_addr,
    output reg  [31:0]  dmem_wdata,
    output wire         dmem_we,
    output wire         dmem_re,
    output reg  [3:0]   dmem_be,

    input  wire [31:0]  dmem_rdata,

    // to MEM/WB
    output wire [31:0]  wb_alu_result,
    output wire [31:0]  wb_pc_plus4,
    output wire [31:0]  wb_imm_u,         // NUEVO
    output wire [4:0]   wb_rd,
    output wire         wb_rd_we,         // NUEVO
    output wire [1:0]   wb_sel

);

    //--------------------------------------------------------------------------
    // Direct memory signals
    //--------------------------------------------------------------------------
    assign dmem_addr = mem_alu_result;
    assign dmem_we   = mem_mem_we;
    assign dmem_re   = mem_mem_re;

    //--------------------------------------------------------------------------
    // Write-data alignment and byte enable generation
    //
    // mem_mem_size:
    //   2'b00 = byte  (SB)
    //   2'b01 = half  (SH)
    //   2'b10 = word  (SW)
    //--------------------------------------------------------------------------
    always @(*) begin
        dmem_be    = 4'b0000;
        dmem_wdata = 32'b0;

        if (mem_mem_we) begin
            case (mem_mem_size)

                // --------------------------------------------------------------
                // SB
                // --------------------------------------------------------------
                2'b00: begin
                    case (mem_alu_result[1:0])
                        2'b00: begin
                            dmem_be    = 4'b0001;
                            dmem_wdata = {24'b0, mem_store_data[7:0]};
                        end

                        2'b01: begin
                            dmem_be    = 4'b0010;
                            dmem_wdata = {16'b0, mem_store_data[7:0], 8'b0};
                        end

                        2'b10: begin
                            dmem_be    = 4'b0100;
                            dmem_wdata = {8'b0, mem_store_data[7:0], 16'b0};
                        end

                        2'b11: begin
                            dmem_be    = 4'b1000;
                            dmem_wdata = {mem_store_data[7:0], 24'b0};
                        end

                        default: begin
                            dmem_be    = 4'b0000;
                            dmem_wdata = 32'b0;
                        end
                    endcase
                end

                // --------------------------------------------------------------
                // SH
                // --------------------------------------------------------------
                2'b01: begin
                    case (mem_alu_result[1])
                        1'b0: begin
                            dmem_be    = 4'b0011;
                            dmem_wdata = {16'b0, mem_store_data[15:0]};
                        end

                        1'b1: begin
                            dmem_be    = 4'b1100;
                            dmem_wdata = {mem_store_data[15:0], 16'b0};
                        end

                        default: begin
                            dmem_be    = 4'b0000;
                            dmem_wdata = 32'b0;
                        end
                    endcase
                end

                // --------------------------------------------------------------
                // SW
                // --------------------------------------------------------------
                2'b10: begin
                    dmem_be    = 4'b1111;
                    dmem_wdata = mem_store_data;
                end

                // --------------------------------------------------------------
                // Default
                // --------------------------------------------------------------
                default: begin
                    dmem_be    = 4'b0000;
                    dmem_wdata = 32'b0;
                end
            endcase
        end
    end

    //--------------------------------------------------------------------------
    // Pass-through to MEM/WB
    //--------------------------------------------------------------------------
    assign wb_alu_result = mem_alu_result;
    assign wb_pc_plus4   = mem_pc_plus4;
    assign wb_imm_u      = mem_imm_u;     // NUEVO
    assign wb_rd         = mem_rd;
    assign wb_rd_we      = mem_rd_we;     // NUEVO
    assign wb_sel        = mem_wb_sel;

endmodule