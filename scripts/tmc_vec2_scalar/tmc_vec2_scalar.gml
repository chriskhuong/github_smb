/// @description tmc_vec2_scalar(tmc_vec2,tmc_vec2)
/// @param tmc_vec2
/// @param tmc_vec2
/*
    calculates the scalar beteen the 2 vectors returning a new vector
    var v = tmc_vec2_scalar(tmc_vec2(10,10),tmc_vec2(10,10));
*/
var v;
v[2] = argument1[2] - argument0[2];
v[1] = argument1[1] - argument0[1];
v[0] = argument0[0];
return v;