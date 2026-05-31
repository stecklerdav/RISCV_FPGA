`timescale 1ns / 1ps

module exception_mux (
    // Excepciones desde EX
    input  wire        ex_exception_valid,
    input  wire [31:0] ex_exception_pc,
    input  wire [3:0]  ex_exception_cause,
    input  wire [31:0] ex_exception_tval,

    // Excepciones desde MEM
    input  wire        mem_exception_valid,
    input  wire [31:0] mem_exception_pc,
    input  wire [3:0]  mem_exception_cause,
    input  wire [31:0] mem_exception_tval,

    // Salida única hacia trap_controller
    output wire        exception_valid,
    output wire [31:0] exception_pc,
    output wire [3:0]  exception_cause,
    output wire [31:0] exception_tval
);

    // Prioridad a MEM porque es instrucción más vieja en pipeline
    assign exception_valid =
        mem_exception_valid | ex_exception_valid;

    assign exception_pc =
        mem_exception_valid ? mem_exception_pc : ex_exception_pc;

    assign exception_cause =
        mem_exception_valid ? mem_exception_cause : ex_exception_cause;

    assign exception_tval =
        mem_exception_valid ? mem_exception_tval : ex_exception_tval;

endmodule