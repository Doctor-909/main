#include "grains.h"
uint64_t square(uint8_t index) { 
    

    if ( 0 >= index || index > 64) { 
        return 0;
    }
    uint64_t gains = 1; 
     for (int i = 2 ;  index >= i; ++i) { 
         gains = gains * 2; 

     }
     return gains; 
}
uint64_t total(void){ 
    uint64_t total = 0 ; 
    for (int i = 1;  i <= 64 ; ++i) { 
         
        total = total +  square(i);

    }
    return total ; 
}