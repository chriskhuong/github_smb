/// @description tmc_vec3_rev(tmc_vec3)
/// @param tmc_vec3
/*
    reverses a vector, returning a new vector
    var v = tmc_vec3_rev(tmc_vec3(1,2,3));
*/
var v;
v[3] = -argument0[3];
v[2] = -argument0[2];
v[1] = -argument0[1];
v[0] = argument0[0];
return v;