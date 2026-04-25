`timescale 1ns/1ps

module if_id_reg (
    input  wire        clk,
    input  wire        rst,

    // Desde IF
    input  wire [31:0] if_pc_in,
    input  wire [31:0] if_pc4_in,
    input  wire [31:0] if_instr_in,
    input  wire        if_valid_in,

    // Control pipeline
    input  wire        flush,
    input  wire        hold,

    // Hacia ID
    output wire [31:0] id_pc_out,
    output wire [31:0] id_pc4_out,
    output wire [31:0] id_instr_out,
    output wire        id_valid_out
);

    localparam [31:0] RV32I_NOP = 32'h0000_0013;

    // Ajusta esto según tu frontend (0 o 1 normalmente en tu caso)
    localparam FLUSH_EXTRA_KILLS = 1;

    localparam KILL_CNT_W = (FLUSH_EXTRA_KILLS > 0) ? $clog2(FLUSH_EXTRA_KILLS + 1) : 1;

    // ------------------------------------------------------------
    // Registro principal IF/ID
    // ------------------------------------------------------------
    reg [31:0] reg_pc;
    reg [31:0] reg_pc4;
    reg [31:0] reg_instr;
    reg        reg_valid;

    reg [KILL_CNT_W-1:0] kill_cnt;

    // ------------------------------------------------------------
    // Alineación (por latencia de BRAM = 1 ciclo)
    // ------------------------------------------------------------
    reg [31:0] pc_align;
    reg [31:0] pc4_align;
    reg        valid_align;

    always @(posedge clk) begin
        if (rst) begin
            pc_align    <= 32'b0;
            pc4_align   <= 32'b0;
            valid_align <= 1'b0;
        end
        else if (!hold) begin
            pc_align    <= if_pc_in;
            pc4_align   <= if_pc4_in;
            valid_align <= if_valid_in;
        end
    end

    // ------------------------------------------------------------
    // Lógica principal
    // ------------------------------------------------------------
    always @(posedge clk) begin
        if (rst) begin
            reg_pc    <= 32'b0;
            reg_pc4   <= 32'b0;
            reg_instr <= RV32I_NOP;
            reg_valid <= 1'b0;
            kill_cnt  <= {KILL_CNT_W{1'b0}};
        end
        else begin

            // ----------------------------
            // Control kill extra
            // ----------------------------
            if (flush) begin
                if (hold)
                    kill_cnt <= {KILL_CNT_W{1'b0}};
                else
                    kill_cnt <= FLUSH_EXTRA_KILLS;
            end
            else if (!hold && (kill_cnt != 0)) begin
                kill_cnt <= kill_cnt - 1'b1;
            end

            // ----------------------------
            // Datos pipeline
            // ----------------------------
            if (flush || (!hold && (kill_cnt != 0))) begin
                reg_pc    <= 32'b0;
                reg_pc4   <= 32'b0;
                reg_instr <= RV32I_NOP;
                reg_valid <= 1'b0;
            end
            else if (!hold) begin
                reg_pc    <= pc_align;
                reg_pc4   <= pc4_align;
                reg_instr <= if_instr_in;
                reg_valid <= valid_align;
            end
            // else: hold mantiene valores
        end
    end

    // ------------------------------------------------------------
    // Outputs
    // ------------------------------------------------------------
    assign id_pc_out    = reg_pc;
    assign id_pc4_out   = reg_pc4;
    assign id_instr_out = reg_instr;
    assign id_valid_out = reg_valid;

endmodule