.section .text.start
.globl _start

_start:
    addi x1, x0, 16   
    addi x8, x0, 25    
    sw   x8, 4(x1)       
    lw   x8, 4(x1)      
    sw   x8, 4(x1)       
    lw   x8, 4(x1)       

done:
    jal x0, done