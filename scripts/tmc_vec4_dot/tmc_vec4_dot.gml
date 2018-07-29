/// @description tmc_vec4_dot(tmc_vec4,tmc_vec4)
/// @param tmc_vec4
/// @param tmc_vec4
/*
    returns the dot product between the 2 vectors
*/
var tot = argument0[4] * argument1[4];
tot+=argument0[3] * argument1[3];
tot+=argument0[2] * argument1[2];
tot+=argument0[1] * argument1[1];
return tot;