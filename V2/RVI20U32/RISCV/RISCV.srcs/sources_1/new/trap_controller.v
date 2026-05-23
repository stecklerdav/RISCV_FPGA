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

// ============================================================
// ACCESS FAULT INPUTS
// ============================================================

input  wire        load_access_fault,
input  wire        store_access_fault,

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

// ============================================================
// NEW
// ============================================================

output reg  [31:0] trap_mtval,

output reg         mret_taken,
output reg  [31:0] mret_target

);



// ============================================================
// IRQ ENABLES
// ============================================================

wire global_irq_enable;
wire timer_irq_enable;
wire timer_irq_pending;

assign global_irq_enable = csr_mstatus[3]; // MIE
assign timer_irq_enable  = csr_mie[7];     // MTIE
assign timer_irq_pending = csr_mip[7];     // MTIP



// ============================================================
// TIMER IRQ
// ============================================================

wire take_timer_irq;

assign take_timer_irq =
    instr_valid &&
    global_irq_enable &&
    timer_irq_enable &&
    timer_irq_pending &&
    !mem_stall_req;



// ============================================================
// ECALL
// ============================================================

wire take_ecall;

assign take_ecall =
    instr_valid &&
    ecall &&
    !mem_stall_req;



// ============================================================
// ILLEGAL INSTRUCTION
// ============================================================

wire take_illegal;

assign take_illegal =
    instr_valid &&
    illegal_instr &&
    !mem_stall_req;



// ============================================================
// LOAD ACCESS FAULT
// ============================================================

wire take_load_access_fault;

assign take_load_access_fault =
    instr_valid &&
    load_access_fault &&
    !mem_stall_req;



// ============================================================
// STORE ACCESS FAULT
// ============================================================

wire take_store_access_fault;

assign take_store_access_fault =
    instr_valid &&
    store_access_fault &&
    !mem_stall_req;



// ============================================================
// MRET
// ============================================================

wire take_mret;

assign take_mret =
    instr_valid &&
    mret &&
    !mem_stall_req;



// ============================================================
// TRAP CONTROL
// ============================================================

always @(*) begin

    trap_enter  = 1'b0;
    trap_flush  = 1'b0;

    trap_target = 32'h0000_0000;

    trap_mepc   = 32'h0000_0000;
    trap_mcause = 32'h0000_0000;

    trap_mtval  = 32'h0000_0000;

    mret_taken  = 1'b0;
    mret_target = 32'h0000_0000;



    // ========================================================
    // LOAD ACCESS FAULT
    // mcause = 5
    // ========================================================

    if (take_load_access_fault) begin

        trap_enter  = 1'b1;

        trap_flush  = 1'b1;

        trap_target = csr_mtvec;

        trap_mepc   = current_pc;

        trap_mcause = 32'h0000_0005;

        // dirección o valor asociado al fault
        trap_mtval  = current_pc;
    end



    // ========================================================
    // STORE ACCESS FAULT
    // mcause = 7
    // ========================================================

    else if (take_store_access_fault) begin

        trap_enter  = 1'b1;

        trap_flush  = 1'b1;

        trap_target = csr_mtvec;

        trap_mepc   = current_pc;

        trap_mcause = 32'h0000_0007;

        trap_mtval  = current_pc;
    end



    // ========================================================
    // MACHINE TIMER INTERRUPT
    // ========================================================

    else if (take_timer_irq) begin

        trap_enter  = 1'b1;

        trap_flush  = 1'b1;

        trap_target = csr_mtvec;

        trap_mepc   = current_pc;

        trap_mcause = 32'h8000_0007;

        trap_mtval  = 32'h0000_0000;
    end



    // ========================================================
    // ECALL FROM MACHINE MODE
    // ========================================================

    else if (take_ecall) begin

        trap_enter  = 1'b1;

        trap_flush  = 1'b1;

        trap_target = csr_mtvec;

        trap_mepc   = current_pc;

        trap_mcause = 32'h0000_000B;

        trap_mtval  = 32'h0000_0000;
    end



    // ========================================================
    // ILLEGAL INSTRUCTION
    // ========================================================

    else if (take_illegal) begin

        trap_enter  = 1'b1;

        trap_flush  = 1'b1;

        trap_target = csr_mtvec;

        trap_mepc   = current_pc;

        trap_mcause = 32'h0000_0002;

        // luego puedes colocar la instrucción ilegal real
        trap_mtval  = 32'h0000_0002;
    end



    // ========================================================
    // MRET
    // ========================================================

    else if (take_mret) begin

        mret_taken  = 1'b1;

        trap_flush  = 1'b1;

        mret_target = csr_mepc;
    end
end

endmodule