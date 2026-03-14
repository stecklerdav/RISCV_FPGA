module mmio_decode_ram_gpio #(
    parameter RAM_BASE  = 32'h0000_1000,
    parameter RAM_SIZE  = 32'h0000_1000, // 4KB
    parameter GPIO_BASE = 32'h0000_2000,
    parameter GPIO_SIZE = 32'h0000_0100  // 256B
)(
    input  wire        clk,
    input  wire        rst,

    input  wire        mem_re,
    input  wire        mem_we,
    input  wire [31:0] addr,
    input  wire [31:0] store_data,
    input  wire [1:0]  lsu_size,
    input  wire        lsu_unsigned,

    output wire        ram_en,
    output wire        ram_we,
    output wire [3:0]  ram_be,
    output wire [31:0] ram_addr,
    output wire [31:0] ram_wdata,
    input  wire [31:0] ram_rdata,

    output wire        gpio_en,
    output wire        gpio_we,
    output wire [31:0] gpio_addr,
    output wire [31:0] gpio_wdata,
    input  wire [31:0] gpio_rdata,

    output wire [31:0] load_data,
    output wire        fault_access
);

    // 1) Decode de rangos
    wire is_ram  = (addr >= RAM_BASE)  && (addr < (RAM_BASE  + RAM_SIZE));
    wire is_gpio = (addr >= GPIO_BASE) && (addr < (GPIO_BASE + GPIO_SIZE));

    assign fault_access = (mem_re || mem_we) && !(is_ram || is_gpio);

    // 2) Byte enable + load adjust (LSU)
    wire [3:0]  be;
    wire [31:0] raw_load_word;

    wire [1:0]  off = addr[1:0];

    // Store alineado (tu lógica)
    wire [31:0] store_aligned =
        (lsu_size == 2'd0) ? (store_data << (off * 8)) :
        (lsu_size == 2'd1) ? (store_data << (off[1] * 16)) :
                             store_data;

    assign raw_load_word =
        is_ram  ? ram_rdata  :
        is_gpio ? gpio_rdata :
                 32'h0;

    rv32i_lsu u_lsu (
        .addr        (addr),
        .store_data  (store_data),
        .mem_rdata   (raw_load_word),
        .size        (lsu_size),
        .is_unsigned (lsu_unsigned),
        .be          (be),
        .load_data   (load_data)
    );

    // 3) Señales hacia RAM
    assign ram_en    = (mem_re || mem_we) && is_ram;
    assign ram_we    = mem_we && is_ram;
    assign ram_be    = be;
    // *** ELIGE UNA ***
    assign ram_addr  = addr - RAM_BASE;         // byte-addressed local
    //assign ram_addr  = (addr - RAM_BASE) >> 2; // word-addressed local
    assign ram_wdata = store_aligned;

    // 4) Señales hacia GPIO
    assign gpio_en    = (mem_re || mem_we) && is_gpio;
    assign gpio_we    = mem_we && is_gpio;
    assign gpio_addr  = addr - GPIO_BASE;  // offset dentro de 256B (recomendado)
    assign gpio_wdata = store_data;

endmodule
