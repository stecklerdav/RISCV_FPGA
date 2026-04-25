`timescale 1ns / 1ps

module tb_control_unit;

    // ------------------------------------------------------------
    // Clock & Reset
    // ------------------------------------------------------------
    reg clk;
    reg reset;

    // ------------------------------------------------------------
    // DUT: Block Design real (NO wrapper)
    // ------------------------------------------------------------
    A dut (
        .clk   (clk),
        .reset (reset)
    );

    // ------------------------------------------------------------
    // Clock generation: 100 MHz
    // ------------------------------------------------------------
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    // ------------------------------------------------------------
    // Reset sequence
    // ------------------------------------------------------------
    initial begin
        reset = 1'b1;
        #40;
        reset = 1'b0;
    end

    // ------------------------------------------------------------
    // Inicialización de memoria de datos
    // Array en 0x20 .. 0x24 = {1,2,3,4,5}
    // ------------------------------------------------------------
    initial begin
        // Esperar a salir de reset
        @(negedge reset);

        // Array de datos
        dut.A_uram_0_0.mem[8'h20] = 16'd1;
        dut.A_uram_0_0.mem[8'h21] = 16'd2;
        dut.A_uram_0_0.mem[8'h22] = 16'd3;
        dut.A_uram_0_0.mem[8'h23] = 16'd4;
        dut.A_uram_0_0.mem[8'h24] = 16'd5;

        // Zonas de resultado
        dut.A_uram_0_0.mem[8'h1E] = 16'd0; // suma
        dut.A_uram_0_0.mem[8'h1F] = 16'd0; // doble
    end

    // ------------------------------------------------------------
    // Monitor de ejecución (útil para debug)
    // ------------------------------------------------------------
    initial begin
        $display(" time | PC   | r1  r2  r3  r4 | SP ");
        $display("------------------------------------------------");
        $monitor("%4t | %h | %h %h %h %h | %h",
            $time,
            dut.A_pc_0_0.pc,
            dut.A_regfile_0_0.regs[1],
            dut.A_regfile_0_0.regs[2],
            dut.A_regfile_0_0.regs[3],
            dut.A_regfile_0_0.regs[4],
            dut.A_stack_unit_0_0.sp
        );
    end

    // ------------------------------------------------------------
    // Verificación automática del programa
    // ------------------------------------------------------------
    initial begin
        // Tiempo suficiente para:
        // - inicialización
        // - bucle
        // - CALL
        // - RET
        // - STORE finales
        #3000;

        $display("\n--------------------------------------------");
        $display("Verificando resultados del programa");

        // Suma esperada = 1+2+3+4+5 = 15
        if (dut.A_uram_0_0.mem[8'h1E] !== 16'd15) begin
            $error("ERROR: Suma incorrecta. Esperado 15, obtenido %0d",
                   dut.A_uram_0_0.mem[8'h1E]);
        end else begin
            $display("OK: Suma correcta = %0d",
                     dut.A_uram_0_0.mem[8'h1E]);
        end

        // Doble esperado = 30
        if (dut.A_uram_0_0.mem[8'h1F] !== 16'd30) begin
            $error("ERROR: Doble incorrecto. Esperado 30, obtenido %0d",
                   dut.A_uram_0_0.mem[8'h1F]);
        end else begin
            $display("OK: Doble correcto = %0d",
                     dut.A_uram_0_0.mem[8'h1F]);
        end

        $display("--------------------------------------------");
        $display("SIMULACION COMPLETADA CON EXITO");
        $stop;
    end

endmodule
