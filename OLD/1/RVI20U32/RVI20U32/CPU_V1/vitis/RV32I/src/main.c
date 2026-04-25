#include "xil_cache.h"
#include <stdint.h>

#define BRAM_BASE 0xA0000000U   // el que pusiste en Address Editor

// Esto lo genera: xxd -i prog.bin > prog_array.h
#include "prog_array.h"

// xxd suele crear nombres tipo: unsigned char prog_bin[]; unsigned int prog_bin_len;
// Si el archivo se llama prog.bin, normalmente salen: prog_bin y prog_bin_len.
// Si no, ajusta estos nombres a los que veas en prog_array.h
extern unsigned char prog_bin[];
extern unsigned int  prog_bin_len;

int main(void)
{
    volatile uint32_t *bram = (uint32_t*)BRAM_BASE;

    // opcional: deshabilitar cache si te da problemas
    // Xil_DCacheDisable();

    unsigned words = (prog_bin_len + 3) / 4;
    for (unsigned i = 0; i < words; i++) {
        bram[i] = ((uint32_t*)prog_bin)[i];
    }

    // importante en ZynqMP si hay DCache habilitada
    Xil_DCacheFlushRange(BRAM_BASE, words * 4);

    // aquí sueltas reset del RV32I (cuando ya tengas GPIO/Reset controlado)
    while(1);
}
