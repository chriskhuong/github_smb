/// @description tmc_vec2_comp(tmc_vec2,tmc_vec2)
/// @param tmc_vec2
/// @param tmc_vec2
/*
    return true if the 2 vectors have the same values and the same type
*/
var comp = argument0[2] == argument1[2];
comp += argument0[1] == argument1[1];
comp += argument0[0] == argument1[0];
return comp == argument[0]+1;