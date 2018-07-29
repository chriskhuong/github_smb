/// @description tmc_vec2_pow(tmc_vec2,tmc_vec2)
/// @param tmc_vec2
/// @param tmc_vec2
/*
    return a new vector with the first vector power to the second
*/
var v;
v[2] = power(argument0[2],argument1[2]);
v[1] = power(argument0[1],argument1[1]);
v[0] = argument0[0];
return v;
