#include "resistor_color.h"

int color_code(resistor_band_t  band) { 
    return band ;

}

const resistor_band_t  *colors() { 
    static resistor_band_t all_color[10] ={
    BLACK,
    BROWN,
    RED, 
    ORANGE,
    YELLOW,
    GREEN,
    BLUE,  
    VIOLET, 
    GREY,   
    WHITE 

}  ;  
return all_color ; 

    
}

