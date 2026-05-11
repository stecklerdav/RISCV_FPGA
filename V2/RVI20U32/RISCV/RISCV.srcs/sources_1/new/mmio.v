`timescale 1ns / 1ps

module mmio #(
    parameter [31:0] RAM_BASE   = 32'h0000_2000,
    parameter [31:0] RAM_SIZE   = 32'h0000_1000,

    parameter [31:0] GPIO_BASE  = 32'h0000_3000,
    parameter [31:0] GPIO_SIZE  = 32'h0000_0010,

    parameter [31:0] UART_BASE  = 32'h0000_3010,
    parameter [31:0] UART_SIZE  = 32'h0000_0010,

    parameter        RAM_ADDR_LOCAL = 1'b1
)(
    input         clk,
    input         rst,

    input         cpu_valid,
    input         cpu_we,
    input  [31:0] cpu_addr,
    input  [31:0] cpu_wdata,
    input  [3:0]  cpu_be,

    output reg [31:0] cpu_rdata,
    output reg        cpu_ready,
    output reg        cpu_error,

    output reg        ram_valid,
    output reg        ram_we,
    output reg [31:0] ram_addr,
    output reg [31:0] ram_wdata,
    output reg [3:0]  ram_be,

    input  [31:0]     ram_rdata,
    input             ram_ready,

    output reg        gpio_valid,
    output reg        gpio_we,
    output reg [31:0] gpio_addr,
    output reg [31:0] gpio_wdata,
    output reg [3:0]  gpio_be,

    input  [31:0]     gpio_rdata,
    input             gpio_ready,

    output reg        uart_valid,
    output reg        uart_we,
    output reg [31:0] uart_addr,
    output reg [31:0] uart_wdata,
    output reg [3:0]  uart_be,

    input  [31:0]     uart_rdata,
    input             uart_ready
);

    // ============================================================
    // DECODE
    // ============================================================

    wire sel_ram;
    wire sel_gpio;
    wire sel_uart;
    wire sel_none;

    assign sel_ram  = (cpu_addr >= RAM_BASE)  && (cpu_addr < (RAM_BASE  + RAM_SIZE));
    assign sel_gpio = (cpu_addr >= GPIO_BASE) && (cpu_addr < (GPIO_BASE + GPIO_SIZE));
    assign sel_uart = (cpu_addr >= UART_BASE) && (cpu_addr < (UART_BASE + UART_SIZE));
    assign sel_none = !(sel_ram || sel_gpio || sel_uart);

    wire cpu_read;
    assign cpu_read = cpu_valid && !cpu_we;

    wire [31:0] ram_addr_mapped;
    assign ram_addr_mapped = RAM_ADDR_LOCAL ? (cpu_addr - RAM_BASE) : cpu_addr;

    wire [31:0] gpio_addr_mapped;
    wire [31:0] uart_addr_mapped;

    assign gpio_addr_mapped = cpu_addr - GPIO_BASE;
    assign uart_addr_mapped = cpu_addr - UART_BASE;

    // ============================================================
    // REQUEST HACIA PERIFÉRICOS
    // ============================================================

    always @(*) begin
        ram_valid = 1'b0;
        ram_we    = 1'b0;
        ram_addr  = 32'h0000_0000;
        ram_wdata = cpu_wdata;
        ram_be    = cpu_be;

        gpio_valid = 1'b0;
        gpio_we    = 1'b0;
        gpio_addr  = 32'h0000_0000;
        gpio_wdata = cpu_wdata;
        gpio_be    = cpu_be;

        uart_valid = 1'b0;
        uart_we    = 1'b0;
        uart_addr  = 32'h0000_0000;
        uart_wdata = cpu_wdata;
        uart_be    = cpu_be;

        if (cpu_valid && sel_ram) begin
            ram_valid = 1'b1;
            ram_we    = cpu_we;
            ram_addr  = ram_addr_mapped;
        end

        else if (cpu_valid && sel_gpio) begin
            gpio_valid = 1'b1;
            gpio_we    = cpu_we;
            gpio_addr  = gpio_addr_mapped;
        end

        else if (cpu_valid && sel_uart) begin
            uart_valid = 1'b1;
            uart_we    = cpu_we;
            uart_addr  = uart_addr_mapped;
        end
    end

    // ============================================================
    // REGISTRO DE SELECTOR DE RESPUESTA
    //
    // RAM:
    //   RAM es síncrona. No registramos ram_rdata aquí.
    //   Solo registramos que la respuesta viene de RAM.
    //
    // UART/GPIO:
    //   rdata es combinacional.
    //   Hay que capturarlo durante el ciclo del request.
    // ============================================================

    reg read_sel_ram_q;
    reg read_sel_gpio_q;
    reg read_sel_uart_q;
    reg read_error_q;

    reg [31:0] gpio_rdata_q;
    reg [31:0] uart_rdata_q;

    always @(posedge clk) begin
        if (rst) begin
            read_sel_ram_q  <= 1'b0;
            read_sel_gpio_q <= 1'b0;
            read_sel_uart_q <= 1'b0;
            read_error_q    <= 1'b0;

            gpio_rdata_q    <= 32'h0000_0000;
            uart_rdata_q    <= 32'h0000_0000;
        end else begin
            if (cpu_read) begin
                read_sel_ram_q  <= sel_ram;
                read_sel_gpio_q <= sel_gpio;
                read_sel_uart_q <= sel_uart;
                read_error_q    <= sel_none;

                // GPIO/UART son lecturas combinacionales:
                // se capturan aquí para entregarlas alineadas al mem_stage.
                if (sel_gpio) begin
                    gpio_rdata_q <= gpio_rdata;
                end else begin
                    gpio_rdata_q <= 32'h0000_0000;
                end

                if (sel_uart) begin
                    uart_rdata_q <= uart_rdata;
                end else begin
                    uart_rdata_q <= 32'h0000_0000;
                end

            end else begin
                read_sel_ram_q  <= 1'b0;
                read_sel_gpio_q <= 1'b0;
                read_sel_uart_q <= 1'b0;
                read_error_q    <= 1'b0;

                gpio_rdata_q    <= 32'h0000_0000;
                uart_rdata_q    <= 32'h0000_0000;
            end
        end
    end

    // ============================================================
    // RESPUESTA HACIA CPU
    // ============================================================

    always @(*) begin
        cpu_rdata = 32'h0000_0000;
        cpu_error = 1'b0;

        if (read_sel_ram_q) begin
            // RAM síncrona: dato válido 1 ciclo después del request.
            cpu_rdata = ram_rdata;
            cpu_error = 1'b0;
        end

        else if (read_sel_gpio_q) begin
            // GPIO combinacional: dato capturado.
            cpu_rdata = gpio_rdata_q;
            cpu_error = 1'b0;
        end

        else if (read_sel_uart_q) begin
            // UART combinacional: dato capturado.
            cpu_rdata = uart_rdata_q;
            cpu_error = 1'b0;
        end

        else if (read_error_q) begin
            cpu_rdata = 32'hDEAD_BEEF;
            cpu_error = 1'b1;
        end
    end

    // ============================================================
    // READY
    // ============================================================

    always @(*) begin
        cpu_ready = 1'b1;

        if (cpu_valid && sel_ram) begin
            cpu_ready = ram_ready;
        end

        else if (cpu_valid && sel_gpio) begin
            cpu_ready = gpio_ready;
        end

        else if (cpu_valid && sel_uart) begin
            cpu_ready = uart_ready;
        end

        else begin
            cpu_ready = 1'b1;
        end
    end

endmodule