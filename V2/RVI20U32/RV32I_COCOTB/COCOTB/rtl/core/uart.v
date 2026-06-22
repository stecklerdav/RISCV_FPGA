`timescale 1ns / 1ps

module uart #(
    parameter CLK_FREQ   = 190_474_289,
    parameter BAUD       = 115200,
    parameter FIFO_DEPTH = 64
)(
    input  wire        clk,
    input  wire        rst,

    input  wire        valid,
    input  wire        we,
    input  wire [31:0] addr,
    input  wire [31:0] wdata,
    input  wire [3:0]  be,

    output reg  [31:0] rdata,
    output wire        ready,

    output reg         tx,
    input  wire        rx,

    output wire        tx_busy,
    output wire        tx_ready,
    output wire        rx_busy,
    output wire        rx_ready
);

    localparam integer CLKS_PER_BIT  = CLK_FREQ / BAUD;
    localparam integer HALF_BIT_CLKS = CLKS_PER_BIT / 2;

    localparam [3:0] UART_TXDATA = 4'h0;
    localparam [3:0] UART_STATUS = 4'h4;
    localparam [3:0] UART_RXDATA = 4'h8;

    assign ready = 1'b1;

    function integer clog2;
        input integer value;
        integer i;
        begin
            value = value - 1;
            for (i = 0; value > 0; i = i + 1)
                value = value >> 1;
            clog2 = i;
        end
    endfunction

    localparam FIFO_AW = clog2(FIFO_DEPTH);

    // ============================================================
    // TX
    // ============================================================

    reg [31:0] tx_clk_cnt;
    reg [3:0]  tx_bit_idx;
    reg [9:0]  tx_shifter;
    reg        tx_busy_q;

    assign tx_busy  = tx_busy_q;
    assign tx_ready = ~tx_busy_q;

    wire write_txdata = valid &&
                        we &&
                        (addr[3:0] == UART_TXDATA) &&
                        be[0] &&
                        tx_ready;

    always @(posedge clk) begin
        if (rst) begin
            tx          <= 1'b1;
            tx_busy_q   <= 1'b0;
            tx_clk_cnt  <= 32'd0;
            tx_bit_idx  <= 4'd0;
            tx_shifter  <= 10'b11_1111_1111;
        end else begin
            if (!tx_busy_q) begin
                tx <= 1'b1;

                if (write_txdata) begin
                    tx_shifter <= {1'b1, wdata[7:0], 1'b0};
                    tx_busy_q  <= 1'b1;
                    tx_clk_cnt <= 32'd0;
                    tx_bit_idx <= 4'd0;
                end
            end else begin
                tx <= tx_shifter[0];

                if (tx_clk_cnt == CLKS_PER_BIT - 1) begin
                    tx_clk_cnt <= 32'd0;
                    tx_shifter <= {1'b1, tx_shifter[9:1]};

                    if (tx_bit_idx == 4'd9) begin
                        tx_busy_q  <= 1'b0;
                        tx_bit_idx <= 4'd0;
                        tx         <= 1'b1;
                    end else begin
                        tx_bit_idx <= tx_bit_idx + 1'b1;
                    end
                end else begin
                    tx_clk_cnt <= tx_clk_cnt + 1'b1;
                end
            end
        end
    end

    // ============================================================
    // RX synchronizer
    // ============================================================

    reg rx_meta;
    reg rx_sync;

    always @(posedge clk) begin
        if (rst) begin
            rx_meta <= 1'b1;
            rx_sync <= 1'b1;
        end else begin
            rx_meta <= rx;
            rx_sync <= rx_meta;
        end
    end

    // ============================================================
    // RX FIFO
    // ============================================================

    reg [7:0] rx_fifo [0:FIFO_DEPTH-1];
    reg [FIFO_AW-1:0] rx_wr_ptr;
    reg [FIFO_AW-1:0] rx_rd_ptr;
    reg [FIFO_AW:0]   rx_count;

    wire rx_fifo_empty = (rx_count == 0);
    wire rx_fifo_full  = (rx_count == FIFO_DEPTH);

    wire [7:0] rx_count_status;
    assign rx_count_status = {1'b0, rx_count};

    assign rx_ready = !rx_fifo_empty;

    // ============================================================
    // RX engine
    // ============================================================

    localparam RX_IDLE  = 2'd0;
    localparam RX_START = 2'd1;
    localparam RX_DATA  = 2'd2;
    localparam RX_STOP  = 2'd3;

    reg [1:0]  rx_state;
    reg [31:0] rx_clk_cnt;
    reg [2:0]  rx_bit_idx;
    reg [7:0]  rx_shift;
    reg        rx_busy_q;
    reg        rx_overrun_q;
    reg        rx_framing_q;

    assign rx_busy = rx_busy_q;

    wire read_rxdata = valid &&
                       !we &&
                       (addr[3:0] == UART_RXDATA);

    wire read_status = valid &&
                       !we &&
                       (addr[3:0] == UART_STATUS);

    wire rx_stop_sample = (rx_state == RX_STOP) &&
                          (rx_clk_cnt == CLKS_PER_BIT - 1);

    wire rx_byte_ok = rx_stop_sample && (rx_sync == 1'b1);

    wire fifo_pop  = read_rxdata && !rx_fifo_empty;
    wire fifo_push = rx_byte_ok && (!rx_fifo_full || fifo_pop);

    always @(posedge clk) begin
        if (rst) begin
            rx_state     <= RX_IDLE;
            rx_clk_cnt   <= 32'd0;
            rx_bit_idx   <= 3'd0;
            rx_shift     <= 8'd0;
            rx_busy_q    <= 1'b0;
            rx_overrun_q <= 1'b0;
            rx_framing_q <= 1'b0;

            rx_wr_ptr    <= {FIFO_AW{1'b0}};
            rx_rd_ptr    <= {FIFO_AW{1'b0}};
            rx_count     <= {(FIFO_AW+1){1'b0}};
        end else begin

            if (read_status) begin
                rx_overrun_q <= 1'b0;
                rx_framing_q <= 1'b0;
            end

            if (fifo_pop) begin
                if (rx_rd_ptr == FIFO_DEPTH-1)
                    rx_rd_ptr <= {FIFO_AW{1'b0}};
                else
                    rx_rd_ptr <= rx_rd_ptr + 1'b1;
            end

            if (fifo_push) begin
                rx_fifo[rx_wr_ptr] <= rx_shift;

                if (rx_wr_ptr == FIFO_DEPTH-1)
                    rx_wr_ptr <= {FIFO_AW{1'b0}};
                else
                    rx_wr_ptr <= rx_wr_ptr + 1'b1;
            end

            case ({fifo_push, fifo_pop})
                2'b10: rx_count <= rx_count + 1'b1;
                2'b01: rx_count <= rx_count - 1'b1;
                default: rx_count <= rx_count;
            endcase

            if (rx_byte_ok && rx_fifo_full && !fifo_pop) begin
                rx_overrun_q <= 1'b1;
            end

            case (rx_state)

                RX_IDLE: begin
                    rx_busy_q  <= 1'b0;
                    rx_clk_cnt <= 32'd0;
                    rx_bit_idx <= 3'd0;

                    if (rx_sync == 1'b0) begin
                        rx_state   <= RX_START;
                        rx_busy_q  <= 1'b1;
                        rx_clk_cnt <= 32'd0;
                    end
                end

                RX_START: begin
                    if (rx_clk_cnt == HALF_BIT_CLKS - 1) begin
                        rx_clk_cnt <= 32'd0;

                        if (rx_sync == 1'b0) begin
                            rx_state <= RX_DATA;
                        end else begin
                            rx_state  <= RX_IDLE;
                            rx_busy_q <= 1'b0;
                        end
                    end else begin
                        rx_clk_cnt <= rx_clk_cnt + 1'b1;
                    end
                end

                RX_DATA: begin
                    if (rx_clk_cnt == CLKS_PER_BIT - 1) begin
                        rx_clk_cnt <= 32'd0;
                        rx_shift[rx_bit_idx] <= rx_sync;

                        if (rx_bit_idx == 3'd7) begin
                            rx_bit_idx <= 3'd0;
                            rx_state   <= RX_STOP;
                        end else begin
                            rx_bit_idx <= rx_bit_idx + 1'b1;
                        end
                    end else begin
                        rx_clk_cnt <= rx_clk_cnt + 1'b1;
                    end
                end

                RX_STOP: begin
                    if (rx_clk_cnt == CLKS_PER_BIT - 1) begin
                        rx_clk_cnt <= 32'd0;
                        rx_state   <= RX_IDLE;
                        rx_busy_q  <= 1'b0;

                        if (rx_sync == 1'b0) begin
                            rx_framing_q <= 1'b1;
                        end
                    end else begin
                        rx_clk_cnt <= rx_clk_cnt + 1'b1;
                    end
                end

                default: begin
                    rx_state  <= RX_IDLE;
                    rx_busy_q <= 1'b0;
                end

            endcase
        end
    end

    // ============================================================
    // MMIO READ
    // ============================================================

    always @(*) begin
        case (addr[3:0])

            UART_TXDATA: begin
                rdata = 32'h0000_0000;
            end

            UART_STATUS: begin
                rdata = {
                    16'b0,
                    rx_count_status, // bits 15:8
                    2'b0,
                    rx_framing_q,    // bit 5
                    rx_overrun_q,    // bit 4
                    rx_busy_q,       // bit 3
                    rx_ready,        // bit 2
                    tx_busy_q,       // bit 1
                    tx_ready         // bit 0
                };
            end

            UART_RXDATA: begin
                if (!rx_fifo_empty)
                    rdata = {24'b0, rx_fifo[rx_rd_ptr]};
                else
                    rdata = 32'h0000_0000;
            end

            default: begin
                rdata = 32'h0000_0000;
            end

        endcase
    end

endmodule