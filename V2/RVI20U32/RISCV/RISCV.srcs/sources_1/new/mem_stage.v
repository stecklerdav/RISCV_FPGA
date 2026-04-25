`timescale 1ns / 1ps

module mem_stage (
    input  wire        clk,
    input  wire        rst,
    input  wire        stall,
    input  wire        kill,

    // Entrada desde EX/MEM
    input  wire        mem_in_valid,
    input  wire [31:0] mem_in_alu_result,
    input  wire [31:0] mem_in_store_data,
    input  wire [31:0] mem_in_pc_plus4,
    input  wire [31:0] mem_in_imm_u,
    input  wire [4:0]  mem_in_rd,

    input  wire        mem_in_mem_re,
    input  wire        mem_in_mem_we,
    input  wire [1:0]  mem_in_mem_size,
    input  wire        mem_in_mem_unsigned,

    input  wire        mem_in_rd_we,
    input  wire [1:0]  mem_in_wb_sel,

    // Request hacia RAM de datos
    output reg  [31:0] dmem_addr,
    output reg         dmem_we,
    output reg         dmem_re,
    output reg  [3:0]  dmem_be,
    output reg  [31:0] dmem_wdata,

    // Dato leído desde RAM
    input  wire [31:0] dmem_rdata,

    // Salida hacia MEM/WB
    output reg         mem_out_valid,
    output reg  [31:0] mem_out_data,
    output reg  [31:0] mem_out_alu_result,
    output reg  [31:0] mem_out_pc_plus4,
    output reg  [31:0] mem_out_imm_u,
    output reg  [4:0]  mem_out_rd,

    output reg  [1:0]  mem_out_mem_size,
    output reg         mem_out_mem_unsigned,

    output reg         mem_out_rd_we,
    output reg  [1:0]  mem_out_wb_sel,

    // NUEVO: dato disponible para forwarding desde MEM_STAGE_OUT
    output reg  [31:0] mem_forward_data
);

    localparam [1:0] SZ_B = 2'b00;
    localparam [1:0] SZ_H = 2'b01;
    localparam [1:0] SZ_W = 2'b10;

    localparam [1:0] WB_ALU   = 2'd0;
    localparam [1:0] WB_MEM   = 2'd1;
    localparam [1:0] WB_PC4   = 2'd2;
    localparam [1:0] WB_IMM_U = 2'd3;

    // Payload retrasado 1 ciclo para alinear con RAM síncrona
    reg        mem_q_valid;
    reg [31:0] mem_q_alu_result;
    reg [31:0] mem_q_pc_plus4;
    reg [31:0] mem_q_imm_u;
    reg [4:0]  mem_q_rd;

    reg [1:0]  mem_q_mem_size;
    reg        mem_q_mem_unsigned;

    reg        mem_q_rd_we;
    reg [1:0]  mem_q_wb_sel;

    // Request actual hacia memoria
    always @(*) begin
        dmem_addr  = mem_in_alu_result;
        dmem_we    = mem_in_valid & mem_in_mem_we & ~stall;
        dmem_re    = mem_in_valid & mem_in_mem_re & ~stall;
        dmem_be    = 4'b0000;
        dmem_wdata = 32'b0;

        if (mem_in_valid && mem_in_mem_we) begin
            case (mem_in_mem_size)

                SZ_B: begin
                    case (mem_in_alu_result[1:0])
                        2'b00: begin
                            dmem_be    = 4'b0001;
                            dmem_wdata = {24'b0, mem_in_store_data[7:0]};
                        end
                        2'b01: begin
                            dmem_be    = 4'b0010;
                            dmem_wdata = {16'b0, mem_in_store_data[7:0], 8'b0};
                        end
                        2'b10: begin
                            dmem_be    = 4'b0100;
                            dmem_wdata = {8'b0, mem_in_store_data[7:0], 16'b0};
                        end
                        2'b11: begin
                            dmem_be    = 4'b1000;
                            dmem_wdata = {mem_in_store_data[7:0], 24'b0};
                        end
                        default: begin
                            dmem_be    = 4'b0000;
                            dmem_wdata = 32'b0;
                        end
                    endcase
                end

                SZ_H: begin
                    case (mem_in_alu_result[1])
                        1'b0: begin
                            dmem_be    = 4'b0011;
                            dmem_wdata = {16'b0, mem_in_store_data[15:0]};
                        end
                        1'b1: begin
                            dmem_be    = 4'b1100;
                            dmem_wdata = {mem_in_store_data[15:0], 16'b0};
                        end
                        default: begin
                            dmem_be    = 4'b0000;
                            dmem_wdata = 32'b0;
                        end
                    endcase
                end

                SZ_W: begin
                    dmem_be    = 4'b1111;
                    dmem_wdata = mem_in_store_data;
                end

                default: begin
                    dmem_be    = 4'b0000;
                    dmem_wdata = 32'b0;
                end
            endcase
        end
    end

    // Payload retrasado 1 ciclo
    always @(posedge clk) begin
        if (rst) begin
            mem_q_valid        <= 1'b0;
            mem_q_alu_result   <= 32'b0;
            mem_q_pc_plus4     <= 32'b0;
            mem_q_imm_u        <= 32'b0;
            mem_q_rd           <= 5'b0;

            mem_q_mem_size     <= 2'b0;
            mem_q_mem_unsigned <= 1'b0;

            mem_q_rd_we        <= 1'b0;
            mem_q_wb_sel       <= 2'b0;
        end
        else if (kill) begin
            mem_q_valid        <= 1'b0;
            mem_q_alu_result   <= 32'b0;
            mem_q_pc_plus4     <= 32'b0;
            mem_q_imm_u        <= 32'b0;
            mem_q_rd           <= 5'b0;

            mem_q_mem_size     <= 2'b0;
            mem_q_mem_unsigned <= 1'b0;

            mem_q_rd_we        <= 1'b0;
            mem_q_wb_sel       <= 2'b0;
        end
        else if (!stall) begin
            mem_q_valid        <= mem_in_valid;
            mem_q_alu_result   <= mem_in_alu_result;
            mem_q_pc_plus4     <= mem_in_pc_plus4;
            mem_q_imm_u        <= mem_in_imm_u;
            mem_q_rd           <= mem_in_rd;

            mem_q_mem_size     <= mem_in_mem_size;
            mem_q_mem_unsigned <= mem_in_mem_unsigned;

            mem_q_rd_we        <= mem_in_rd_we;
            mem_q_wb_sel       <= mem_in_wb_sel;
        end
    end

    // Salida hacia MEM/WB + forwarding
    always @(*) begin
        mem_out_valid        = mem_q_valid;
        mem_out_data         = dmem_rdata;
        mem_out_alu_result   = mem_q_alu_result;
        mem_out_pc_plus4     = mem_q_pc_plus4;
        mem_out_imm_u        = mem_q_imm_u;
        mem_out_rd           = mem_q_rd;

        mem_out_mem_size     = mem_q_mem_size;
        mem_out_mem_unsigned = mem_q_mem_unsigned;

        mem_out_rd_we        = mem_q_rd_we;
        mem_out_wb_sel       = mem_q_wb_sel;

        case (mem_q_wb_sel)
            WB_ALU:   mem_forward_data = mem_q_alu_result;
            WB_MEM:   mem_forward_data = dmem_rdata;
            WB_PC4:   mem_forward_data = mem_q_pc_plus4;
            WB_IMM_U: mem_forward_data = mem_q_imm_u;
            default:  mem_forward_data = mem_q_alu_result;
        endcase
    end

endmodule