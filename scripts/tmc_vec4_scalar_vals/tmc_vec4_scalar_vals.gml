/// @description tmc_vec4_scalar_vals(tmc_vec4,x,y,z,a)
/// @param tmc_vec4
/// @param x
/// @param y
/// @param z
/// @param a
/*
    calculates the scalar beteen the vector and x,y,z,a returning a new vector
    var v = tmc_vec4_scalar(tmc_vec4(10,10,10,10),10,10,10,10);
*/
var v;
v[4] = argument4 - argument0[4];
v[3] = argument3 - argument0[3];
v[2] = argument2 - argument0[2];
v[1] = argument1 - argument0[1];
v[0] = argument0[0];
return v;