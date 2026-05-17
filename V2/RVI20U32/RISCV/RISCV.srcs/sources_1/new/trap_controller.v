`timescale 1ns / 1ps

module trap_controller (
input  wire        clk,
input  wire        rst,

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

output reg         mret_taken,
output reg  [31:0] mret_target

);

wire global_irq_enable;
wire timer_irq_enable;
wire timer_irq_pending;

assign global_irq_enable = csr_mstatus[3]; // MIE
assign timer_irq_enable  = csr_mie[7];     // MTIE
assign timer_irq_pending = csr_mip[7];     // MTIP

wire take_timer_irq;
assign take_timer_irq =
    instr_valid &&
    global_irq_enable &&
    timer_irq_enable &&
    timer_irq_pending &&
    !mem_stall_req;

wire take_ecall;
assign take_ecall =
    instr_valid &&
    ecall &&
    !mem_stall_req;

wire take_illegal;
assign take_illegal =
    instr_valid &&
    illegal_instr &&
    !mem_stall_req;

wire take_mret;
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

    mret_taken  = 1'b0;
    mret_target = 32'h0000_0000;

    if (take_timer_irq) begin
        trap_enter  = 1'b1;
        trap_flush  = 1'b1;
        trap_target = csr_mtvec;
        trap_mepc   = current_pc;
        trap_mcause = 32'h8000_0007; // machine timer interrupt
    end else if (take_ecall) begin
        trap_enter  = 1'b1;
        trap_flush  = 1'b1;
        trap_target = csr_mtvec;
        trap_mepc   = current_pc;
        trap_mcause = 32'h0000_000B; // ecall from machine mode
    end else if (take_illegal) begin
        trap_enter  = 1'b1;
        trap_flush  = 1'b1;
        trap_target = csr_mtvec;
        trap_mepc   = current_pc;
        trap_mcause = 32'h0000_0002; // illegal instruction
    end else if (take_mret) begin
        mret_taken  = 1'b1;
        trap_flush  = 1'b1;
        mret_target = csr_mepc;
    end
end

endmodule