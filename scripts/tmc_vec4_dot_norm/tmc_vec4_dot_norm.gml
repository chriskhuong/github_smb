/// @description tmc_vec4_dot_norm(tmc_vec4,tmc_vec4)
/// @param tmc_vec4
/// @param tmc_vec4
/*
    returns the normalized dot product between the 2 vectors 
*/
var v1 = tmc_vec4_norm(argument0);
var v2 = tmc_vec4_norm(argument1);
var tot = v1[4] * v2[4];
tot+=v1[3] * v2[3];
tot+=v1[2] * v2[2];
tot+=v1[1] * v2[1];
return tot/4;