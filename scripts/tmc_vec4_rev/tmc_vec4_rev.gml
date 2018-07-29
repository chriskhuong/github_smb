/// @description tmc_vec4_rev(tmc_vec4)
/// @param tmc_vec4
/*
    reverses a vector, returning a new vector
    var v = tmc_vec4_rev(tmc_vec4(1,2,3,4));
*/
var v;
v[4] = -argument0[4];
v[3] = -argument0[3];
v[2] = -argument0[2];
v[1] = -argument0[1];
v[0] = argument0[0];
return v;