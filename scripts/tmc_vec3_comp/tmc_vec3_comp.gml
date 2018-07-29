/// @description tmc_vec3_comp(tmc_vec3,tmc_vec3)
/// @param tmc_vec3
/// @param tmc_vec3
/*
    return true if the 2 vectors have the same values and the same type
*/
var comp = argument0[3] == argument1[3];
comp += argument0[2] == argument1[2];
comp += argument0[1] == argument1[1];
comp += argument0[0] == argument1[0];
return comp == argument[0]+1;