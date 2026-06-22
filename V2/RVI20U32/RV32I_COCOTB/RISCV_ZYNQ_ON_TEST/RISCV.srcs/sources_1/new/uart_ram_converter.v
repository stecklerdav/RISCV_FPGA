`timescale 1ns/1ps

module uart_ram_converter #(
    parameter CLK_FREQ = 190_474_289,
    parameter BAUD     = 921000
)(
    input  wire        clk,
    input  wire        rst,

    // UART desde/hacia Zynq PS UART1 por EMIO
    input  wire        uart_rx,
    output reg         uart_tx,

    // Control reset del RISC-V
    output reg         cpu_reset_out,

    // Puerto B hacia ram_data
    output reg         zynq_valid,
    output reg         zynq_we,
    output reg [3:0]   zynq_be,
    output reg [31:0]  zynq_addr,
    output reg [31:0]  zynq_wdata,
    input  wire [31:0] zynq_rdata,
    input  wire        zynq_ready
);

    localparam integer CLKS_PER_BIT  = CLK_FREQ / BAUD;
    localparam integer HALF_BIT_CLKS = CLKS_PER_BIT / 2;

    // ============================================================
    // Protocolo desde Zynq
    // ============================================================
    // 'W' + addr[31:24] addr[23:16] addr[15:8] addr[7:0]
    //     + data[31:24] data[23:16] data[15:8] data[7:0]
    //
    // Ejemplo:
    // 57 80 00 10 00 12 34 56 78
    // escribe 0x12345678 en 0x80001000
    //
    // 'G' = GO    -> libera reset del RISC-V
    // 'X' = RESET -> mantiene reset del RISC-V
    // 'P' = PING  -> responde 'P'
    //
    // ACK correcto = 0x06
    // ============================================================

    localparam CMD_WRITE = 8'h57; // 'W'
    localparam CMD_GO    = 8'h47; // 'G'
    localparam CMD_RESET = 8'h58; // 'X'
    localparam CMD_PING  = 8'h50; // 'P'
    localparam ACK       = 8'h06;

    // ============================================================
    // UART RX
    // ============================================================

    reg rx_meta;
    reg rx_sync;

    always @(posedge clk) begin
        if (rst) begin
            rx_meta <= 1'b1;
            rx_sync <= 1'b1;
        end else begin
            rx_meta <= uart_rx;
            rx_sync <= rx_meta;
        end
    end

    localparam RX_IDLE  = 2'd0;
    localparam RX_START = 2'd1;
    localparam RX_DATA  = 2'd2;
    localparam RX_STOP  = 2'd3;

    reg [1:0]  rx_state;
    reg [31:0] rx_clk_cnt;
    reg [2:0]  rx_bit_idx;
    reg [7:0]  rx_shift;
    reg [7:0]  rx_data;
    reg        rx_valid;

    always @(posedge clk) begin
        if (rst) begin
            rx_state   <= RX_IDLE;
            rx_clk_cnt <= 32'd0;
            rx_bit_idx <= 3'd0;
            rx_shift   <= 8'd0;
            rx_data    <= 8'd0;
            rx_valid   <= 1'b0;
        end else begin
            rx_valid <= 1'b0;

            case (rx_state)

                RX_IDLE: begin
                    rx_clk_cnt <= 32'd0;
                    rx_bit_idx <= 3'd0;

                    if (rx_sync == 1'b0) begin
                        rx_state   <= RX_START;
                        rx_clk_cnt <= 32'd0;
                    end
                end

                RX_START: begin
                    if (rx_clk_cnt == HALF_BIT_CLKS - 1) begin
                        rx_clk_cnt <= 32'd0;

                        if (rx_sync == 1'b0)
                            rx_state <= RX_DATA;
                        else
                            rx_state <= RX_IDLE;
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

                        if (rx_sync == 1'b1) begin
                            rx_data  <= rx_shift;
                            rx_valid <= 1'b1;
                        end
                    end else begin
                        rx_clk_cnt <= rx_clk_cnt + 1'b1;
                    end
                end

                default: begin
                    rx_state <= RX_IDLE;
                end

            endcase
        end
    end

    // ============================================================
    // UART TX simple para ACK
    // ============================================================

    reg [31:0] tx_clk_cnt;
    reg [3:0]  tx_bit_idx;
    reg [9:0]  tx_shift;
    reg        tx_busy;
    reg        tx_start;
    reg [7:0]  tx_data;

    always @(posedge clk) begin
        if (rst) begin
            uart_tx    <= 1'b1;
            tx_clk_cnt <= 32'd0;
            tx_bit_idx <= 4'd0;
            tx_shift   <= 10'b11_1111_1111;
            tx_busy    <= 1'b0;
        end else begin
            if (!tx_busy) begin
                uart_tx <= 1'b1;

                if (tx_start) begin
                    tx_shift   <= {1'b1, tx_data, 1'b0};
                    tx_busy    <= 1'b1;
                    tx_clk_cnt <= 32'd0;
                    tx_bit_idx <= 4'd0;
                end
            end else begin
                uart_tx <= tx_shift[0];

                if (tx_clk_cnt == CLKS_PER_BIT - 1) begin
                    tx_clk_cnt <= 32'd0;
                    tx_shift   <= {1'b1, tx_shift[9:1]};

                    if (tx_bit_idx == 4'd9) begin
                        tx_busy    <= 1'b0;
                        tx_bit_idx <= 4'd0;
                        uart_tx    <= 1'b1;
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
    // Parser UART -> RAM
    // ============================================================

    localparam S_CMD     = 4'd0;
    localparam S_A3      = 4'd1;
    localparam S_A2      = 4'd2;
    localparam S_A1      = 4'd3;
    localparam S_A0      = 4'd4;
    localparam S_D3      = 4'd5;
    localparam S_D2      = 4'd6;
    localparam S_D1      = 4'd7;
    localparam S_D0      = 4'd8;
    localparam S_WRITE   = 4'd9;
    localparam S_WAIT    = 4'd10;
    localparam S_ACK     = 4'd11;

    reg [3:0]  state;
    reg [31:0] addr_tmp;
    reg [31:0] data_tmp;
    reg [7:0]  ack_byte;

    always @(posedge clk) begin
        if (rst) begin
            state         <= S_CMD;
            addr_tmp      <= 32'h0000_0000;
            data_tmp      <= 32'h0000_0000;

            zynq_valid    <= 1'b0;
            zynq_we       <= 1'b0;
            zynq_be       <= 4'b1111;
            zynq_addr     <= 32'h0000_0000;
            zynq_wdata    <= 32'h0000_0000;

            cpu_reset_out <= 1'b1;

            tx_start      <= 1'b0;
            tx_data       <= 8'h00;
            ack_byte      <= ACK;
        end else begin
            zynq_valid <= 1'b0;
            tx_start   <= 1'b0;

            case (state)

                S_CMD: begin
                    if (rx_valid) begin
                        if (rx_data == CMD_WRITE) begin
                            state <= S_A3;
                        end else if (rx_data == CMD_GO) begin
                            cpu_reset_out <= 1'b0;
                            ack_byte <= ACK;
                            state <= S_ACK;
                        end else if (rx_data == CMD_RESET) begin
                            cpu_reset_out <= 1'b1;
                            ack_byte <= ACK;
                            state <= S_ACK;
                        end else if (rx_data == CMD_PING) begin
                            ack_byte <= CMD_PING;
                            state <= S_ACK;
                        end else begin
                            state <= S_CMD;
                        end
                    end
                end

                S_A3: begin
                    if (rx_valid) begin
                        addr_tmp[31:24] <= rx_data;
                        state <= S_A2;
                    end
                end

                S_A2: begin
                    if (rx_valid) begin
                        addr_tmp[23:16] <= rx_data;
                        state <= S_A1;
                    end
                end

                S_A1: begin
                    if (rx_valid) begin
                        addr_tmp[15:8] <= rx_data;
                        state <= S_A0;
                    end
                end

                S_A0: begin
                    if (rx_valid) begin
                        addr_tmp[7:0] <= rx_data;
                        state <= S_D3;
                    end
                end

                S_D3: begin
                    if (rx_valid) begin
                        data_tmp[31:24] <= rx_data;
                        state <= S_D2;
                    end
                end

                S_D2: begin
                    if (rx_valid) begin
                        data_tmp[23:16] <= rx_data;
                        state <= S_D1;
                    end
                end

                S_D1: begin
                    if (rx_valid) begin
                        data_tmp[15:8] <= rx_data;
                        state <= S_D0;
                    end
                end

                S_D0: begin
                    if (rx_valid) begin
                        data_tmp[7:0] <= rx_data;
                        state <= S_WRITE;
                    end
                end

                S_WRITE: begin
                    zynq_valid <= 1'b1;
                    zynq_we    <= 1'b1;
                    zynq_be    <= 4'b1111;
                    zynq_addr  <= addr_tmp;
                    zynq_wdata <= data_tmp;
                    state      <= S_WAIT;
                end

                S_WAIT: begin
                    if (zynq_ready) begin
                        ack_byte <= ACK;
                        state <= S_ACK;
                    end
                end

                S_ACK: begin
                    if (!tx_busy) begin
                        tx_data  <= ack_byte;
                        tx_start <= 1'b1;
                        state    <= S_CMD;
                    end
                end

                default: begin
                    state <= S_CMD;
                end

            endcase
        end
    end

endmodule