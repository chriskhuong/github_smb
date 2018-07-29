/// @description tmc_vec2_rev(tmc_vec2)
/// @param tmc_vec2
/*
    reverses a vector, returning a new vector
    var v = tmc_vec2_rev(tmc_vec2(1,2));
*/
var v;
v[2] = -argument0[2];
v[1] = -argument0[1];
v[0] = argument0[0];
return v;