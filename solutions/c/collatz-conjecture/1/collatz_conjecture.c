#include "collatz_conjecture.h"


int steps(int start) { 
    if  (0 >= start) { 
        return ERROR_VALUE; 

    }
    int steps = 0 ; 
    
    while (start >  1 ) { 
        int is_even = start %2 ==0 ; 
        if (is_even == 1) { 
             start = start /2 ; 
              
        
        }else { 
            start = (start *3) +1 ; 
        
        }
        ++steps;


    }
    return steps; 

}