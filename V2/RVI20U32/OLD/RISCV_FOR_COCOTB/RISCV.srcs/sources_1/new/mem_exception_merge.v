`timescale 1ns / 1ps

module mem_exception_merge (

    // ============================================================
    // EX/MEM REGISTER EXCEPTIONS
    // ============================================================

    input  wire        mem_exception_valid,
    input  wire [31:0] mem_exception_pc,
    input  wire [3:0]  mem_exception_cause,
    input  wire [31:0] mem_exception_tval,

    // ============================================================
    // MEM ACCESS FAULTS
    // ============================================================

    input  wire        mem_fault_valid,
    input  wire [3:0]  mem_fault_cause,
    input  wire [31:0] mem_fault_tval,

    // ============================================================
    // FINAL OUTPUT TO exception_mux
    // ============================================================

    output wire        final_mem_exception_valid,
    output wire [31:0] final_mem_exception_pc,
    output wire [3:0]  final_mem_exception_cause,
    output wire [31:0] final_mem_exception_tval
);

    assign final_mem_exception_valid =
        mem_exception_valid | mem_fault_valid;

    assign final_mem_exception_pc =
        mem_exception_pc;

    assign final_mem_exception_cause =
        mem_fault_valid ?
            mem_fault_cause :
            mem_exception_cause;

    assign final_mem_exception_tval =
        mem_fault_valid ?
            mem_fault_tval :
            mem_exception_tval;

endmodule   