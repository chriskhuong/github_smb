/// @description tmc_vec3_scale_r(tmc_vec3,real)
/// @param tmc_vec3
/// @param real
/*
    returns a new vector from vector scaled to the length of specified real
    assuming the vector is a scalar of a define length (not 0,0,0,0)
    var v = tmc_vec3_scale_r(tmc_vec3(10,10,10),5);
*/
var v = tmc_vec3_norm(argument0);
v[3] = v[3] * argument1;
v[2] = v[2] * argument1;
v[1] = v[1] * argument1;
return v;
