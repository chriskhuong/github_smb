/// @description tmc_vec3_pow(tmc_vec3,tmc_vec3)
/// @param tmc_vec3
/// @param tmc_vec3
/*
    return a new vector with the first vector power to the second
*/
var v;
v[3] = power(argument0[3],argument1[3]);
v[2] = power(argument0[2],argument1[2]);
v[1] = power(argument0[1],argument1[1]);
v[0] = argument0[0];
return v;
