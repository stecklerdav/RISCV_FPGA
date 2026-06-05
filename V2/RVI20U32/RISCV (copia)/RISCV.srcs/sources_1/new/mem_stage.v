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
    input  wire        mem_in_mem_unsigned,

    input  wire        mem_in_rd_we,
    input  wire [2:0]  mem_in_wb_sel,

    // DMEM REQUEST
    output reg  [31:0] dmem_addr,
    output reg         dmem_valid,
    input  wire        dmem_req_ready,
    output reg         dmem_we,
    output reg         dmem_re,
    output reg  [3:0]  dmem_be,
    output reg  [31:0] dmem_wdata,

    // DMEM RESPONSE
    input  wire [31:0] dmem_rdata,
    input  wire        dmem_ready,
    input  wire        dmem_error,

    // ACCESS FAULTS
    output wire        load_access_fault,
    output wire        store_access_fault,

    // NUEVO: excepción MEM hacia exception_mux
    output wire        mem_fault_valid,
    output wire [3:0]  mem_fault_cause,
    output wire [31:0] mem_fault_tval,

    // PIPELINE CONTROL
    output wire        mem_stall_req,

    // OUTPUT TO WB
    output reg         mem_out_valid,
    output reg  [31:0] mem_out_data,
    output reg  [31:0] mem_out_alu_result,
    output reg  [31:0] mem_out_pc_plus4,
    output reg  [31:0] mem_out_imm_u,
    output reg  [4:0]  mem_out_rd,

    output reg  [1:0]  mem_out_mem_size,
    output reg         mem_out_mem_unsigned,

    output reg         mem_out_rd_we,
    output reg  [2:0]  mem_out_wb_sel,

    output reg  [31:0] mem_forward_data
);

    localparam [1:0] SZ_B = 2'b00;
    localparam [1:0] SZ_H = 2'b01;
    localparam [1:0] SZ_W = 2'b10;

    localparam [2:0] WB_ALU = 3'd0;
    localparam [2:0] WB_MEM = 3'd1;
    localparam [2:0] WB_PC4 = 3'd2;
    localparam [2:0] WB_IMM = 3'd3;
    localparam [2:0] WB_CSR = 3'd4;

    wire mem_req_valid;

    assign mem_req_valid =
        mem_in_valid &&
        !kill &&
        (mem_in_mem_re || mem_in_mem_we);

    assign mem_stall_req =
        mem_req_valid && (!dmem_req_ready || !dmem_ready);

    wire mem_can_advance;

    assign mem_can_advance =
        !stall &&
        (!mem_req_valid || (dmem_req_ready && dmem_ready));

    wire mem_in_mem_sign_ext;
    assign mem_in_mem_sign_ext = mem_in_mem_unsigned;

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
    reg [2:0]  mem_q_wb_sel;

    assign load_access_fault =
        dmem_ready &&
        dmem_error &&
        mem_q_valid &&
        mem_q_mem_re;

    assign store_access_fault =
        dmem_ready &&
        dmem_error &&
        mem_q_valid &&
        mem_q_mem_we;

    assign mem_fault_valid =
        load_access_fault | store_access_fault;

    assign mem_fault_cause =
        load_access_fault  ? 4'd5 :
        store_access_fault ? 4'd7 :
                              4'd0;

    assign mem_fault_tval =
        mem_q_alu_result;

    always @(*) begin
        dmem_addr  = mem_in_alu_result;

        dmem_valid = mem_req_valid && dmem_req_ready;
        dmem_we    = mem_req_valid && dmem_req_ready && mem_in_mem_we;
        dmem_re    = mem_req_valid && dmem_req_ready && mem_in_mem_re;

        dmem_be    = 4'b0000;
        dmem_wdata = 32'h0000_0000;

        if (mem_req_valid && mem_in_mem_we) begin
            case (mem_in_mem_size)
                SZ_B: begin
                    case (mem_in_alu_result[1:0])
                        2'b00: begin dmem_be = 4'b0001; dmem_wdata = {24'b0, mem_in_store_data[7:0]}; end
                        2'b01: begin dmem_be = 4'b0010; dmem_wdata = {16'b0, mem_in_store_data[7:0], 8'b0}; end
                        2'b10: begin dmem_be = 4'b0100; dmem_wdata = {8'b0, mem_in_store_data[7:0], 16'b0}; end
                        2'b11: begin dmem_be = 4'b1000; dmem_wdata = {mem_in_store_data[7:0], 24'b0}; end
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
                    dmem_wdata = 32'h0000_0000;
                end
            endcase
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            mem_q_valid        <= 1'b0;
            mem_q_alu_result   <= 32'h0000_0000;
            mem_q_pc_plus4     <= 32'h0000_0000;
            mem_q_imm_u        <= 32'h0000_0000;
            mem_q_rd           <= 5'd0;
            mem_q_mem_size     <= SZ_B;
            mem_q_mem_sign_ext <= 1'b0;
            mem_q_mem_re       <= 1'b0;
            mem_q_mem_we       <= 1'b0;
            mem_q_rd_we        <= 1'b0;
            mem_q_wb_sel       <= WB_ALU;
        end
        else if (mem_can_advance) begin
            mem_q_valid        <= mem_in_valid && !kill;
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

    reg [31:0] load_data_aligned;

    always @(*) begin
        load_data_aligned = 32'h0000_0000;

        case (mem_q_mem_size)
            SZ_B: begin
                case (mem_q_alu_result[1:0])
                    2'b00: load_data_aligned = mem_q_mem_sign_ext ? {{24{dmem_rdata[7]}},  dmem_rdata[7:0]}   : {24'b0, dmem_rdata[7:0]};
                    2'b01: load_data_aligned = mem_q_mem_sign_ext ? {{24{dmem_rdata[15]}}, dmem_rdata[15:8]}  : {24'b0, dmem_rdata[15:8]};
                    2'b10: load_data_aligned = mem_q_mem_sign_ext ? {{24{dmem_rdata[23]}}, dmem_rdata[23:16]} : {24'b0, dmem_rdata[23:16]};
                    2'b11: load_data_aligned = mem_q_mem_sign_ext ? {{24{dmem_rdata[31]}}, dmem_rdata[31:24]} : {24'b0, dmem_rdata[31:24]};
                endcase
            end

            SZ_H: begin
                if (mem_q_alu_result[1] == 1'b0)
                    load_data_aligned = mem_q_mem_sign_ext ? {{16{dmem_rdata[15]}}, dmem_rdata[15:0]} : {16'b0, dmem_rdata[15:0]};
                else
                    load_data_aligned = mem_q_mem_sign_ext ? {{16{dmem_rdata[31]}}, dmem_rdata[31:16]} : {16'b0, dmem_rdata[31:16]};
            end

            SZ_W: begin
                load_data_aligned = dmem_rdata;
            end

            default: begin
                load_data_aligned = 32'h0000_0000;
            end
        endcase
    end

    always @(*) begin
        mem_out_valid        = mem_q_valid;
        mem_out_data         = load_data_aligned;
        mem_out_alu_result   = mem_q_alu_result;
        mem_out_pc_plus4     = mem_q_pc_plus4;
        mem_out_imm_u        = mem_q_imm_u;
        mem_out_rd           = mem_q_rd;
        mem_out_mem_size     = mem_q_mem_size;
        mem_out_mem_unsigned = mem_q_mem_sign_ext;

        mem_out_rd_we =
            mem_q_valid &&
            mem_q_rd_we &&
            (mem_q_rd != 5'd0);

        mem_out_wb_sel = mem_q_wb_sel;

        case (mem_q_wb_sel)
            WB_ALU: mem_forward_data = mem_q_alu_result;
            WB_MEM: mem_forward_data = load_data_aligned;
            WB_PC4: mem_forward_data = mem_q_pc_plus4;
            WB_IMM: mem_forward_data = mem_q_imm_u;
            default: mem_forward_data = mem_q_alu_result;
        endcase
    end

endmodule