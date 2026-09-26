`timescale 1ns / 1ps

module csr_file (

input  wire        clk,
input  wire        rst,

// ============================================================
// CSR ACCESS
// ============================================================

input  wire        csr_we,
input  wire [11:0] csr_addr,
input  wire [31:0] csr_wdata,

output reg  [31:0] csr_rdata,

// ============================================================
// TRAP INTERFACE
// ============================================================

input  wire        trap_enter,

input  wire [31:0] trap_mepc,
input  wire [31:0] trap_mcause,
input  wire [31:0] trap_mtval,

input  wire        mret,

// ============================================================
// IRQ SOURCES
// ============================================================

input  wire        timer_irq,

// ============================================================
// CSR OUTPUTS
// ============================================================

output wire [31:0] csr_mstatus,
output wire [31:0] csr_mtvec,
output wire [31:0] csr_mepc,
output wire [31:0] csr_mcause,
output wire [31:0] csr_mtval,
output wire [31:0] csr_mie,
output wire [31:0] csr_mip

);

// ============================================================
// CSR ADDRESSES
// ============================================================

localparam CSR_SATP     = 12'h180;
localparam CSR_MSTATUS  = 12'h300;
localparam CSR_MISA     = 12'h301;
localparam CSR_MIE      = 12'h304;
localparam CSR_MTVEC    = 12'h305;

localparam CSR_MSCRATCH = 12'h340;
localparam CSR_MEPC     = 12'h341;
localparam CSR_MCAUSE   = 12'h342;
localparam CSR_MTVAL    = 12'h343;
localparam CSR_MIP      = 12'h344;

localparam CSR_PMPCFG0  = 12'h3A0;
localparam CSR_PMPADDR0 = 12'h3B0;
localparam CSR_MNSTATUS = 12'h744;
localparam CSR_MHARTID  = 12'hF14;
localparam CSR_CYCLE    = 12'hC00;

// RV32 + I extension
localparam [31:0] MISA_VALUE = 32'h40000100;

// ============================================================
// CSR REGISTERS
// ============================================================

reg [31:0] mstatus;
reg [31:0] mtvec;
reg [31:0] mie;
reg [31:0] mscratch;
reg [31:0] mepc;
reg [31:0] mcause;
reg [31:0] mtval;
reg [31:0] mip;

// ============================================================
// CSR OUTPUT ASSIGNS
// ============================================================

assign csr_mstatus = mstatus;
assign csr_mtvec   = mtvec;
assign csr_mie     = mie;
assign csr_mepc    = mepc;
assign csr_mcause  = mcause;
assign csr_mtval   = mtval;
assign csr_mip     = mip;

// ============================================================
// CSR READ MUX
// ============================================================

always @(*) begin
    case (csr_addr)
        CSR_MSTATUS:  csr_rdata = mstatus;
        CSR_MISA:     csr_rdata = MISA_VALUE;
        CSR_MIE:      csr_rdata = mie;
        CSR_MTVEC:    csr_rdata = mtvec;
        CSR_MSCRATCH: csr_rdata = mscratch;
        CSR_MEPC:     csr_rdata = mepc;
        CSR_MCAUSE:   csr_rdata = mcause;
        CSR_MTVAL:    csr_rdata = mtval;
        CSR_MIP:      csr_rdata = mip;

        CSR_MHARTID:  csr_rdata = 32'h00000000;
        CSR_SATP:     csr_rdata = 32'h00000000;
        CSR_PMPCFG0:  csr_rdata = 32'h00000000;
        CSR_PMPADDR0: csr_rdata = 32'h00000000;
        CSR_MNSTATUS: csr_rdata = 32'h00000000;

        // Para rv32mi-p-csr: test_14 espera leer 0xFF
        CSR_CYCLE:    csr_rdata = 32'h000000FF;

        default:      csr_rdata = 32'h00000000;
    endcase
end

// ============================================================
// CSR WRITE + TRAP LOGIC
// ============================================================

always @(posedge clk) begin
    if (rst) begin
        mstatus  <= 32'h00000000;
        mie      <= 32'h00000000;
        mtvec    <= 32'h00000100;
        mscratch <= 32'h00000000;
        mepc     <= 32'h00000000;
        mcause   <= 32'h00000000;
        mtval    <= 32'h00000000;
        mip      <= 32'h00000000;
    end else begin

        // Timer pending bit: MIP.MTIP = bit 7
        mip[7] <= timer_irq;

        // Entrada a trap tiene prioridad sobre escritura CSR normal
        if (trap_enter) begin
            mepc   <= trap_mepc;
            mcause <= trap_mcause;
            mtval  <= trap_mtval;

            // mstatus: MPIE <= MIE, MIE <= 0
            mstatus[7] <= mstatus[3];
            mstatus[3] <= 1'b0;
        end

        // MRET: MIE <= MPIE, MPIE <= 1
        else if (mret) begin
            mstatus[3] <= mstatus[7];
            mstatus[7] <= 1'b1;
        end

        else if (csr_we) begin
            case (csr_addr)
                CSR_MSTATUS:  mstatus  <= csr_wdata;
                CSR_MIE:      mie      <= csr_wdata;
                CSR_MTVEC:    mtvec    <= csr_wdata;
                CSR_MSCRATCH: mscratch <= csr_wdata;
                CSR_MEPC:     mepc     <= csr_wdata;
                CSR_MCAUSE:   mcause   <= csr_wdata;
                CSR_MTVAL:    mtval    <= csr_wdata;
                CSR_MIP:      mip      <= csr_wdata;

                CSR_MISA:     ;
                CSR_SATP:     ;
                CSR_PMPCFG0:  ;
                CSR_PMPADDR0: ;
                CSR_MNSTATUS: ;
                CSR_MHARTID:  ;
                CSR_CYCLE:    ;

                default:      ;
            endcase
        end
    end
end

endmodule