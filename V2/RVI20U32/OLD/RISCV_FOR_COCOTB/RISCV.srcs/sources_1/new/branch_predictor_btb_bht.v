`timescale 1ns / 1ps

module branch_predictor_btb_bht #(
    parameter integer ENTRY_BITS = 6,              // 64 entradas por defecto
    parameter integer ENTRY_NUM  = (1 << ENTRY_BITS)
)(
    input  wire        clk,
    input  wire        rst,

    // ========================================================
    // Consulta desde IF
    // ========================================================
    input  wire [31:0] if_pc,

    output wire        pred_valid,
    output wire        pred_taken,
    output wire [31:0] pred_target,
    output wire [31:0] pred_next_pc,

    // ========================================================
    // Actualización desde EX
    // ========================================================
    input  wire        update_valid,
    input  wire [31:0] update_pc,
    input  wire        update_is_control,
    input  wire        update_taken,
    input  wire [31:0] update_target
);

    localparam integer TAG_BITS = 32 - 2 - ENTRY_BITS;

    // ========================================================
    // BTB: Branch Target Buffer
    // ========================================================
    reg                 btb_valid  [0:ENTRY_NUM-1];
    reg [TAG_BITS-1:0]  btb_tag    [0:ENTRY_NUM-1];
    reg [31:0]          btb_target [0:ENTRY_NUM-1];

    // ========================================================
    // BHT: Branch History Table
    // 00 = strongly not taken
    // 01 = weakly not taken
    // 10 = weakly taken
    // 11 = strongly taken
    // ========================================================
    reg [1:0]           bht_ctr    [0:ENTRY_NUM-1];

    // ========================================================
    // IF lookup
    // ========================================================
    wire [ENTRY_BITS-1:0] if_index;
    wire [TAG_BITS-1:0]   if_tag;

    assign if_index = if_pc[ENTRY_BITS+1:2];
    assign if_tag   = if_pc[31:ENTRY_BITS+2];

    wire btb_hit;

    assign btb_hit =
        btb_valid[if_index] &&
        (btb_tag[if_index] == if_tag);

    assign pred_valid  = btb_hit;
    assign pred_taken  = btb_hit && bht_ctr[if_index][1];
    assign pred_target = btb_target[if_index];

    assign pred_next_pc =
        pred_taken ? pred_target : (if_pc + 32'd4);

    // ========================================================
    // EX update
    // ========================================================
    wire [ENTRY_BITS-1:0] update_index;
    wire [TAG_BITS-1:0]   update_tag;

    assign update_index = update_pc[ENTRY_BITS+1:2];
    assign update_tag   = update_pc[31:ENTRY_BITS+2];

    integer i;

    always @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < ENTRY_NUM; i = i + 1) begin
                btb_valid[i]  <= 1'b0;
                btb_tag[i]    <= {TAG_BITS{1'b0}};
                btb_target[i] <= 32'b0;
                bht_ctr[i]    <= 2'b01;       // weakly not taken
            end
        end else begin
            if (update_valid && update_is_control) begin

                // Actualizar BTB
                btb_valid[update_index]  <= 1'b1;
                btb_tag[update_index]    <= update_tag;
                btb_target[update_index] <= update_target;

                // Actualizar contador saturado de 2 bits
                if (update_taken) begin
                    if (bht_ctr[update_index] != 2'b11)
                        bht_ctr[update_index] <= bht_ctr[update_index] + 2'b01;
                end else begin
                    if (bht_ctr[update_index] != 2'b00)
                        bht_ctr[update_index] <= bht_ctr[update_index] - 2'b01;
                end
            end
        end
    end

endmodule