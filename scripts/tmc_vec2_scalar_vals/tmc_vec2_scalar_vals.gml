/// @description tmc_vec2_scalar_vals(tmc_vec2,x,y)
/// @param tmc_vec2
/// @param x
/// @param y
/*
    calculates the scalar beteen the vector and x,y returning a new vector
    var v = tmc_vec2_scalar(tmc_vec2(10,10),10,10);
*/
var v;
v[2] = argument2 - argument0[2];
v[1] = argument1 - argument0[1];
v[0] = argument0[0];
return v;