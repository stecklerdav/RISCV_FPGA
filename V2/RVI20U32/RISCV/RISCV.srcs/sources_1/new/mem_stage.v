`timescale 1ns / 1ps

module mem_stage (
    input  wire        clk,
    input  wire        rst,
    input  wire        stall,
    input  wire        kill,

    input  wire        mem_in_valid,
    input  wire [31:0] mem_in_alu_result,
    input  wire [31:0] mem_in_store_data,
    input  wire [31:0] mem_in_pc_plus4,
    input  wire [31:0] mem_in_imm_u,
    input  wire [4:0]  mem_in_rd,

    input  wire        mem_in_mem_re,
    input  wire        mem_in_mem_we,
    input  wire [1:0]  mem_in_mem_size,

    // Nombre viejo por compatibilidad con Vivado BD.
    // Significado REAL:
    // 1 = sign extend  -> LB/LH
    // 0 = zero extend  -> LBU/LHU
    input  wire        mem_in_mem_unsigned,

    input  wire        mem_in_rd_we,
    input  wire [1:0]  mem_in_wb_sel,

    output reg  [31:0] dmem_addr,
    output reg         dmem_we,
    output reg         dmem_re,
    output reg  [3:0]  dmem_be,
    output reg  [31:0] dmem_wdata,

    input  wire [31:0] dmem_rdata,

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

    output reg  [31:0] mem_forward_data
);

    localparam [1:0] SZ_B = 2'b00;
    localparam [1:0] SZ_H = 2'b01;
    localparam [1:0] SZ_W = 2'b10;

    localparam [1:0] WB_ALU   = 2'd0;
    localparam [1:0] WB_MEM   = 2'd1;
    localparam [1:0] WB_PC4   = 2'd2;
    localparam [1:0] WB_IMM_U = 2'd3;

    // Paquete alineado con dmem_rdata para BRAM síncrona de 1 ciclo
    reg        mem_q_valid;
    reg [31:0] mem_q_alu_result;
    reg [31:0] mem_q_pc_plus4;
    reg [31:0] mem_q_imm_u;
    reg [4:0]  mem_q_rd;

    reg [1:0]  mem_q_mem_size;
    reg        mem_q_mem_sign_ext;
    reg        mem_q_mem_re;
    reg        mem_q_mem_we;

    reg        mem_q_rd_we;
    reg [1:0]  mem_q_wb_sel;

    reg [31:0] load_data_aligned;

    wire mem_in_mem_sign_ext;
    assign mem_in_mem_sign_ext = mem_in_mem_unsigned;

    // ============================================================
    // Request hacia RAM de datos
    // ============================================================
    always @(*) begin
        dmem_addr  = mem_in_alu_result;
        dmem_we    = mem_in_valid & mem_in_mem_we & ~stall & ~kill;
        dmem_re    = mem_in_valid & mem_in_mem_re & ~stall & ~kill;
        dmem_be    = 4'b0000;
        dmem_wdata = 32'b0;

        if (mem_in_valid && mem_in_mem_we && !stall && !kill) begin
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
                    if (mem_in_alu_result[1] == 1'b0) begin
                        dmem_be    = 4'b0011;
                        dmem_wdata = {16'b0, mem_in_store_data[15:0]};
                    end else begin
                        dmem_be    = 4'b1100;
                        dmem_wdata = {mem_in_store_data[15:0], 16'b0};
                    end
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

    // ============================================================
    // Registro de payload MEM
    // Este paquete queda alineado con dmem_rdata de BRAM 1 ciclo.
    // NO agregar otro delay aquí.
    // ============================================================
    always @(posedge clk) begin
        if (rst) begin
            mem_q_valid        <= 1'b0;
            mem_q_alu_result   <= 32'b0;
            mem_q_pc_plus4     <= 32'b0;
            mem_q_imm_u        <= 32'b0;
            mem_q_rd           <= 5'b0;

            mem_q_mem_size     <= 2'b0;
            mem_q_mem_sign_ext <= 1'b0;
            mem_q_mem_re       <= 1'b0;
            mem_q_mem_we       <= 1'b0;

            mem_q_rd_we        <= 1'b0;
            mem_q_wb_sel       <= 2'b0;
        end
        else if (!stall) begin
            mem_q_valid        <= mem_in_valid & ~kill;
            mem_q_alu_result   <= mem_in_alu_result;
            mem_q_pc_plus4     <= mem_in_pc_plus4;
            mem_q_imm_u        <= mem_in_imm_u;
            mem_q_rd           <= mem_in_rd;

            mem_q_mem_size     <= mem_in_mem_size;
            mem_q_mem_sign_ext <= mem_in_mem_sign_ext;
            mem_q_mem_re       <= mem_in_mem_re;
            mem_q_mem_we       <= mem_in_mem_we;

            mem_q_rd_we        <= mem_in_rd_we;
            mem_q_wb_sel       <= mem_in_wb_sel;
        end
    end

    // ============================================================
    // Load alignment + sign/zero extension
    // ============================================================
    always @(*) begin
        case (mem_q_mem_size)

            SZ_B: begin
                case (mem_q_alu_result[1:0])
                    2'b00: begin
                        load_data_aligned =
                            mem_q_mem_sign_ext ?
                            {{24{dmem_rdata[7]}}, dmem_rdata[7:0]} :
                            {24'b0, dmem_rdata[7:0]};
                    end

                    2'b01: begin
                        load_data_aligned =
                            mem_q_mem_sign_ext ?
                            {{24{dmem_rdata[15]}}, dmem_rdata[15:8]} :
                            {24'b0, dmem_rdata[15:8]};
                    end

                    2'b10: begin
                        load_data_aligned =
                            mem_q_mem_sign_ext ?
                            {{24{dmem_rdata[23]}}, dmem_rdata[23:16]} :
                            {24'b0, dmem_rdata[23:16]};
                    end

                    2'b11: begin
                        load_data_aligned =
                            mem_q_mem_sign_ext ?
                            {{24{dmem_rdata[31]}}, dmem_rdata[31:24]} :
                            {24'b0, dmem_rdata[31:24]};
                    end

                    default: begin
                        load_data_aligned = 32'b0;
                    end
                endcase
            end

            SZ_H: begin
                if (mem_q_alu_result[1] == 1'b0) begin
                    load_data_aligned =
                        mem_q_mem_sign_ext ?
                        {{16{dmem_rdata[15]}}, dmem_rdata[15:0]} :
                        {16'b0, dmem_rdata[15:0]};
                end else begin
                    load_data_aligned =
                        mem_q_mem_sign_ext ?
                        {{16{dmem_rdata[31]}}, dmem_rdata[31:16]} :
                        {16'b0, dmem_rdata[31:16]};
                end
            end

            SZ_W: begin
                load_data_aligned = dmem_rdata;
            end

            default: begin
                load_data_aligned = dmem_rdata;
            end
        endcase
    end

    // ============================================================
    // Salidas hacia MEM/WB + forwarding
    // ============================================================
    always @(*) begin
        mem_out_valid        = mem_q_valid;
        mem_out_data         = load_data_aligned;
        mem_out_alu_result   = mem_q_alu_result;
        mem_out_pc_plus4     = mem_q_pc_plus4;
        mem_out_imm_u        = mem_q_imm_u;
        mem_out_rd           = mem_q_rd;

        mem_out_mem_size     = mem_q_mem_size;
        mem_out_mem_unsigned = mem_q_mem_sign_ext;

        mem_out_rd_we        = mem_q_valid & mem_q_rd_we & (mem_q_rd != 5'd0);
        mem_out_wb_sel       = mem_q_wb_sel;

        case (mem_q_wb_sel)
            WB_ALU:   mem_forward_data = mem_q_alu_result;
            WB_MEM:   mem_forward_data = load_data_aligned;
            WB_PC4:   mem_forward_data = mem_q_pc_plus4;
            WB_IMM_U: mem_forward_data = mem_q_imm_u;
            default:  mem_forward_data = mem_q_alu_result;
        endcase
    end

endmodule