/// @description tmc_vec2_div_r(tmc_vec2,real)
/// @param tmc_vec2
/// @param real
/*
    devides the real from the vector returning a new vector
    var v = tmc_vec2_div_r(tmc_vec2(10,10),5);
*/
var v;
v[2] = argument0[2] / argument1;
v[1] = argument0[1] / argument1;
v[0] = argument0[0];
return v;