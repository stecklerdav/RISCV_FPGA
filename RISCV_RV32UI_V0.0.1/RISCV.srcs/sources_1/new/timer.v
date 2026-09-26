`timescale 1ns / 1ps

module timer #(
    parameter [31:0] RESET_CMP = 32'd100000
)(
    input  wire        clk,
    input  wire        rst,

    // Bus MMIO simple
    input  wire        valid,
    input  wire        we,
    input  wire [3:0]  be,
    input  wire [31:0] addr,   // offset dentro del timer: 0x00,0x04...
    input  wire [31:0] wdata,

    output reg  [31:0] rdata,
    output wire        ready,
    output reg         error,

    // Interrupt output
    output wire        timer_irq
);

    localparam [3:0] ADDR_VALUE  = 4'h0;
    localparam [3:0] ADDR_CMP    = 4'h4;
    localparam [3:0] ADDR_CTRL   = 4'h8;
    localparam [3:0] ADDR_STATUS = 4'hC;

    reg [31:0] timer_value;
    reg [31:0] timer_cmp;

    reg        timer_enable;
    reg        irq_enable;
    reg        auto_reload;
    reg        irq_pending;

    wire hit_value  = (addr[3:0] == ADDR_VALUE);
    wire hit_cmp    = (addr[3:0] == ADDR_CMP);
    wire hit_ctrl   = (addr[3:0] == ADDR_CTRL);
    wire hit_status = (addr[3:0] == ADDR_STATUS);

    wire addr_ok = hit_value | hit_cmp | hit_ctrl | hit_status;

    assign ready = valid;
    assign timer_irq = irq_pending & irq_enable;

    // ------------------------------------------------------------
    // Byte-enable write helper
    // ------------------------------------------------------------
    function [31:0] apply_be;
        input [31:0] old_val;
        input [31:0] new_val;
        input [3:0]  byte_en;
        begin
            apply_be = old_val;
            if (byte_en[0]) apply_be[7:0]   = new_val[7:0];
            if (byte_en[1]) apply_be[15:8]  = new_val[15:8];
            if (byte_en[2]) apply_be[23:16] = new_val[23:16];
            if (byte_en[3]) apply_be[31:24] = new_val[31:24];
        end
    endfunction

    // ------------------------------------------------------------
    // Timer logic + writes
    // ------------------------------------------------------------
    always @(posedge clk) begin
        if (rst) begin
            timer_value <= 32'd0;
            timer_cmp   <= RESET_CMP;

            timer_enable <= 1'b0;
            irq_enable   <= 1'b0;
            auto_reload  <= 1'b0;
            irq_pending  <= 1'b0;
        end else begin

            // Contador
            if (timer_enable) begin
                if (timer_value >= timer_cmp) begin
                    irq_pending <= 1'b1;

                    if (auto_reload)
                        timer_value <= 32'd0;
                    else
                        timer_value <= timer_value;
                end else begin
                    timer_value <= timer_value + 32'd1;
                end
            end

            // Escrituras MMIO
            if (valid && we && addr_ok) begin
                case (addr[3:0])
                    ADDR_VALUE: begin
                        timer_value <= apply_be(timer_value, wdata, be);
                    end

                    ADDR_CMP: begin
                        timer_cmp <= apply_be(timer_cmp, wdata, be);
                    end

                    ADDR_CTRL: begin
                        if (be[0]) begin
                            timer_enable <= wdata[0];
                            irq_enable   <= wdata[1];
                            auto_reload  <= wdata[2];
                        end
                    end

                    ADDR_STATUS: begin
                        // W1C: escribir 1 limpia irq_pending
                        if (be[0] && wdata[0])
                            irq_pending <= 1'b0;
                    end
                endcase
            end
        end
    end

    // ------------------------------------------------------------
    // Read mux
    // ------------------------------------------------------------
    always @(*) begin
        rdata = 32'd0;
        error = 1'b0;

        if (valid) begin
            case (addr[3:0])
                ADDR_VALUE: begin
                    rdata = timer_value;
                end

                ADDR_CMP: begin
                    rdata = timer_cmp;
                end

                ADDR_CTRL: begin
                    rdata = {
                        29'd0,
                        auto_reload,
                        irq_enable,
                        timer_enable
                    };
                end

                ADDR_STATUS: begin
                    rdata = {
                        31'd0,
                        irq_pending
                    };
                end

                default: begin
                    rdata = 32'd0;
                    error = 1'b1;
                end
            endcase
        end
    end

endmodule