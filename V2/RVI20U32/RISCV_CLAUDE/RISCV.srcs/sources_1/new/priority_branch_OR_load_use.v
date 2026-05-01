`timescale 1ns / 1ps

module priority_branch_OR_load_use (
    input  wire load_use_pc_en,
    input  wire load_use_if_id_hold,
    input  wire load_use_id_ex_flush,

    input  wire ex_flush_req,

    output wire pc_en_final,
    output wire if_id_hold_final,
    output wire if_id_flush_final,
    output wire id_ex_flush_final
);

    // Branch/JAL/JALR tomado tiene prioridad sobre load-use.
    assign pc_en_final =
        ex_flush_req ? 1'b1 : load_use_pc_en;

    assign if_id_hold_final =
        ex_flush_req ? 1'b0 : load_use_if_id_hold;

    assign if_id_flush_final =
        ex_flush_req;

    assign id_ex_flush_final =
        ex_flush_req | load_use_id_ex_flush;

endmodule