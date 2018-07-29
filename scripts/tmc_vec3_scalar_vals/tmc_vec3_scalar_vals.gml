/// @description tmc_vec3_scalar_vals(tmc_vec3,x,y,z)
/// @param tmc_vec3
/// @param x
/// @param y
/// @param z
/*
    calculates the scalar beteen the vector and x,y,z returning a new vector
    var v = tmc_vec3_scalar(tmc_vec3(10,10,10),10,10,10);
*/
var v;
v[3] = argument3 - argument0[3];
v[2] = argument2 - argument0[2];
v[1] = argument1 - argument0[1];
v[0] = argument0[0];
return v;