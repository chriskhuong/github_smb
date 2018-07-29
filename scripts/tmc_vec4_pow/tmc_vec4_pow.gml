/// @description tmc_vec4_pow(tmc_vec4,tmc_vec4)
/// @param tmc_vec4
/// @param tmc_vec4
/*
    return a new vector with the first vector power to the second
*/
var v;
v[4] = power(argument0[4],argument1[4]);
v[3] = power(argument0[3],argument1[3]);
v[2] = power(argument0[2],argument1[2]);
v[1] = power(argument0[1],argument1[1]);
v[0] = argument0[0];
return v;
