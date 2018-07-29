/// @description tmc_vec3_pow_r(tmc_vec3,real)
/// @param tmc_vec3
/// @param real
/*
    return a new vector with the first vector power to the real value
*/
var v;
v[3] = power(argument0[3],argument1);
v[2] = power(argument0[2],argument1);
v[1] = power(argument0[1],argument1);
v[0] = argument0[0];
return v;
