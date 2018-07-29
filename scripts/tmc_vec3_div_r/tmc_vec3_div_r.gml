/// @description tmc_vec3_div_r(tmc_vec3,real)
/// @param tmc_vec3
/// @param real
/*
    devides the real from the vector returning a new vector
    var v = tmc_vec3_div_r(tmc_vec3(10,10,10),5);
*/
var v;
v[3] = argument0[3] / argument1;
v[2] = argument0[2] / argument1;
v[1] = argument0[1] / argument1;
v[0] = argument0[0];
return v;