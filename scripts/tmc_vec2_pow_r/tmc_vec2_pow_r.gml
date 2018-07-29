/// @description tmc_vec2_pow_r(tmc_vec2,real)
/// @param tmc_vec2
/// @param real
/*
    return a new vector with the first vector power to the real value
*/
var v;
v[2] = power(argument0[2],argument1);
v[1] = power(argument0[1],argument1);
v[0] = argument0[0];
return v;
