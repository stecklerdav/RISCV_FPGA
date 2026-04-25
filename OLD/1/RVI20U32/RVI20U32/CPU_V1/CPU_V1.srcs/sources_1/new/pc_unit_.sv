`timescale 1ns/1ps

module pc_unit #(
    parameter logic [31:0] RESET_PC = 32'h0000_0000
)(
    input  logic        rst,
    input  logic        clk,
    input  logic        pc_en,
    input  logic        pc_redirect_valid,
    input  logic [31:0] pc_redirect_target,

    output logic [31:0] pc,
    output logic [31:0] pc_plus4
);

    logic [31:0] pc_next;

    assign pc_plus4 = pc + 32'd4;

    always_comb begin
        pc_next = pc_plus4;
        if (pc_redirect_valid)
            pc_next = pc_redirect_target;
    end

    always_ff @(posedge clk) begin
        if (rst)
            pc <= RESET_PC;
        else if (pc_en)
            pc <= pc_next;
    end

    // ------------------------------------------------------------
    // ASSERTIONS
    // ------------------------------------------------------------

    // Si pc_en=1, el siguiente PC debe ser:
    // - pc + 4 cuando no hay redirect
    // - pc_redirect_target cuando hay redirect
    always_ff @(posedge clk) begin
        if (!rst && pc_en) begin
            assert (
                ( pc_redirect_valid && (pc_next == pc_redirect_target) ) ||
                (!pc_redirect_valid && (pc_next == pc_plus4) )
            )
            else $error("PC ASSERT FAIL: pc=%h pc_plus4=%h pc_next=%h redirect_valid=%b redirect_target=%h",
                        pc, pc_plus4, pc_next, pc_redirect_valid, pc_redirect_target);
        end
    end

    // Si pc_en=0, el PC no debería actualizarse en ese ciclo
    always_ff @(posedge clk) begin
        if (!rst && !pc_en) begin
            assert ($stable(pc))
            else $error("PC HOLD ASSERT FAIL: pc cambió con pc_en=0. pc=%h", pc);
        end
    end

endmodule