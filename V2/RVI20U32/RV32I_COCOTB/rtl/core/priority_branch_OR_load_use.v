module priority_branch_OR_load_use (
    input  wire load_use_pc_en,
    input  wire load_use_if_id_hold,
    input  wire load_use_id_ex_flush,

    input  wire ex_flush_req,
    input  wire priv_redirect_valid,

    output wire pc_en_final,
    output wire if_id_hold_final,
    output wire if_id_flush_final,
    output wire id_ex_flush_final
);

    wire any_redirect;

    assign any_redirect = ex_flush_req | priv_redirect_valid;

    assign pc_en_final =
        any_redirect ? 1'b1 : load_use_pc_en;

    assign if_id_hold_final =
        any_redirect ? 1'b0 : load_use_if_id_hold;

    assign if_id_flush_final =
        any_redirect;

    assign id_ex_flush_final =
        any_redirect | load_use_id_ex_flush;

endmodule
