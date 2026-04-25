#include <stdint.h>

/* símbolos del linker */
extern char __heap_start;
extern char __heap_end;

static char *brk = &__heap_start;

/* usa long en vez de ptrdiff_t */
void* _sbrk(long inc)
{
    char *old = brk;
    char *newb = brk + inc;

    /* alineación ABI 16 bytes */
    uintptr_t nb = (uintptr_t)newb;
    nb = (nb + 15u) & ~(uintptr_t)15u;
    newb = (char*)nb;

    if (newb > &__heap_end) {
        return (void*)-1;
    }

    brk = newb;
    return old;
}
