/// @description tmc_vec2_scale_r(tmc_vec2,real)
/// @param tmc_vec2
/// @param real
/*
    returns a new vector from vector scaled to the length of specified real
    assuming the vector is a scalar of a define length (not 0,0,0,0)
    var v = tmc_vec2_scale_r(tmc_vec2(10,10),5);
*/
var v = tmc_vec2_norm(argument0);
v[2] = v[2] * argument1;
v[1] = v[1] * argument1;
return v;
