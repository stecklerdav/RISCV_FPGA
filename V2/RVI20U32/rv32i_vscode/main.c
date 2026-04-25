#include <stdint.h>

int main() {
 
  volatile uint8_t a=34;
  volatile uint8_t s=58;
   
    while (1) {   
      s=s+a; 
     
    }
}