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

// NEW
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

localparam CSR_MSTATUS = 12'h300;
localparam CSR_MIE     = 12'h304;
localparam CSR_MTVEC   = 12'h305;

localparam CSR_MEPC    = 12'h341;
localparam CSR_MCAUSE  = 12'h342;
localparam CSR_MTVAL   = 12'h343;

localparam CSR_MIP     = 12'h344;



// ============================================================
// CSR REGISTERS
// ============================================================

reg [31:0] mstatus;
reg [31:0] mtvec;

reg [31:0] mie;

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

        CSR_MSTATUS:
            csr_rdata = mstatus;

        CSR_MTVEC:
            csr_rdata = mtvec;

        CSR_MIE:
            csr_rdata = mie;

        CSR_MEPC:
            csr_rdata = mepc;

        CSR_MCAUSE:
            csr_rdata = mcause;

        CSR_MTVAL:
            csr_rdata = mtval;

        CSR_MIP:
            csr_rdata = mip;

        default:
            csr_rdata = 32'h0000_0000;

    endcase
end



// ============================================================
// CSR WRITE + TRAP LOGIC
// ============================================================

always @(posedge clk) begin

    if (rst) begin

        mstatus <= 32'h0000_0000;

        // SOLO PARA TEST
        // luego regresar a 0x00000000
        mtvec   <= 32'h0000_0100;

        mie     <= 32'h0000_0000;

        mepc    <= 32'h0000_0000;
        mcause  <= 32'h0000_0000;
        mtval   <= 32'h0000_0000;

        mip     <= 32'h0000_0000;

    end
    else begin

        // ====================================================
        // UPDATE PENDING IRQ
        // ====================================================

        mip[7] <= timer_irq; // MTIP



        // ====================================================
        // CSR WRITES
        // ====================================================

        if (csr_we) begin

            case (csr_addr)

                CSR_MSTATUS:
                    mstatus <= csr_wdata;

                CSR_MTVEC:
                    mtvec <= csr_wdata;

                CSR_MIE:
                    mie <= csr_wdata;

                CSR_MEPC:
                    mepc <= csr_wdata;

                CSR_MCAUSE:
                    mcause <= csr_wdata;

                CSR_MTVAL:
                    mtval <= csr_wdata;

                CSR_MIP:
                    mip <= csr_wdata;

                default: begin
                end

            endcase
        end



        // ====================================================
        // TRAP ENTER
        // ====================================================

        if (trap_enter) begin

            mepc   <= trap_mepc;
            mcause <= trap_mcause;
            mtval  <= trap_mtval;

            // ================================================
            // mstatus.MPIE <= mstatus.MIE
            // ================================================

            mstatus[7] <= mstatus[3];

            // ================================================
            // mstatus.MIE <= 0
            // ================================================

            mstatus[3] <= 1'b0;
        end



        // ====================================================
        // MRET
        // ====================================================

        if (mret) begin

            // ================================================
            // mstatus.MIE <= mstatus.MPIE
            // ================================================

            mstatus[3] <= mstatus[7];

            // ================================================
            // mstatus.MPIE <= 1
            // ================================================

            mstatus[7] <= 1'b1;
        end
    end
end

endmodule