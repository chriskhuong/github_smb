/// @description tmc_vec3_scalar(tmc_vec3,tmc_vec3)
/// @param tmc_vec3
/// @param tmc_vec3
/*
    calculates the scalar beteen the 2 vectors returning a new vector
    var v = tmc_vec3_scalar(tmc_vec3(10,10,10),tmc_vec3(10,10,10));
*/
var v;
v[3] = argument1[3] - argument0[3];
v[2] = argument1[2] - argument0[2];
v[1] = argument1[1] - argument0[1];
v[0] = argument0[0];
return v;