#include "queen_attack.h"


attack_status_t can_attack(position_t queen_1, position_t queen_2){ 
    //check points 
    //  can't be both  positions be 0  and can't bellow 0 a 
    if  (( queen_1.row ==0 && queen_1.column == 0)||(queen_2.row ==0 && queen_2.column == 0 )||(queen_1.column == queen_2.column && queen_1.row == queen_2.row)){ 
        return INVALID_POSITION; 

    }
    if (queen_1.row == queen_2.row) { 
        return CAN_ATTACK; 
    
    }else if (queen_1.column == queen_2.column ) { 
        return CAN_ATTACK; 

    }else if ( ((queen_1.row -queen_1.column)==(queen_2.row -queen_2.column)) || ((queen_1.row +queen_1.column)==(queen_2.row +queen_2.column))) { 
        return CAN_ATTACK;

    }else { 
        return CAN_NOT_ATTACK; 
    }
}