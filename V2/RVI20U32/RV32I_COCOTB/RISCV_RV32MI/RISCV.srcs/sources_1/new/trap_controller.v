`timescale 1ns / 1ps

module trap_controller (

    input  wire        clk,
    input  wire        rst,

    input  wire        exception_valid,
    input  wire [31:0] exception_pc,
    input  wire [3:0]  exception_cause,
    input  wire [31:0] exception_tval,

    input  wire        instr_valid,
    input  wire [31:0] current_pc,

    input  wire        ecall,
    input  wire        illegal_instr,
    input  wire        mret,

    input  wire        timer_irq,

    input  wire [31:0] csr_mstatus,
    input  wire [31:0] csr_mtvec,
    input  wire [31:0] csr_mepc,
    input  wire [31:0] csr_mie,
    input  wire [31:0] csr_mip,

    input  wire        mem_stall_req,

    output reg         trap_enter,
    output reg         trap_flush,

    output reg  [31:0] trap_target,
    output reg  [31:0] trap_mepc,
    output reg  [31:0] trap_mcause,
    output reg  [31:0] trap_mtval,

    output reg         mret_taken,
    output reg  [31:0] mret_target
);

    wire global_irq_enable;
    wire timer_irq_enable;
    wire timer_irq_pending;

    assign global_irq_enable = csr_mstatus[3];       // mstatus.MIE
    assign timer_irq_enable  = csr_mie[7];           // mie.MTIE
    assign timer_irq_pending = csr_mip[7] | timer_irq; // mip.MTIP o entrada directa

    wire take_exception;
    wire take_timer_irq;
    wire take_ecall;
    wire take_illegal;
    wire take_mret;

    assign take_exception =
        exception_valid &&
        !mem_stall_req;

    assign take_timer_irq =
        instr_valid &&
        global_irq_enable &&
        timer_irq_enable &&
        timer_irq_pending &&
        !mem_stall_req;

    assign take_ecall =
        instr_valid &&
        ecall &&
        !mem_stall_req;

    assign take_illegal =
        instr_valid &&
        illegal_instr &&
        !mem_stall_req;

    assign take_mret =
        instr_valid &&
        mret &&
        !mem_stall_req;

    always @(*) begin

        trap_enter  = 1'b0;
        trap_flush  = 1'b0;

        trap_target = 32'h0000_0000;
        trap_mepc   = 32'h0000_0000;
        trap_mcause = 32'h0000_0000;
        trap_mtval  = 32'h0000_0000;

        mret_taken  = 1'b0;
        mret_target = 32'h0000_0000;

        if (!rst) begin

            if (take_exception) begin
                trap_enter  = 1'b1;
                trap_flush  = 1'b1;

                trap_target = csr_mtvec;

                trap_mepc   = exception_pc;
                trap_mcause = {28'h0000000, exception_cause};
                trap_mtval  = exception_tval;
            end

            else if (take_timer_irq) begin
                trap_enter  = 1'b1;
                trap_flush  = 1'b1;

                trap_target = csr_mtvec;

                trap_mepc   = current_pc;
                trap_mcause = 32'h8000_0007;
                trap_mtval  = 32'h0000_0000;
            end

            else if (take_ecall) begin
                trap_enter  = 1'b1;
                trap_flush  = 1'b1;

                trap_target = csr_mtvec;

                trap_mepc   = current_pc;
                trap_mcause = 32'h0000_000B;
                trap_mtval  = 32'h0000_0000;
            end

            else if (take_illegal) begin
                trap_enter  = 1'b1;
                trap_flush  = 1'b1;

                trap_target = csr_mtvec;

                trap_mepc   = current_pc;
                trap_mcause = 32'h0000_0002;
                trap_mtval  = 32'h0000_0000;
            end

            else if (take_mret) begin
                mret_taken  = 1'b1;
                trap_flush  = 1'b1;

                mret_target = csr_mepc;
            end
        end
    end

endmodule