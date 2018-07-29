/// @description tmc_vec3_div_vals(tmc_vec3,x,y,z)
/// @param tmc_vec3
/// @param x
/// @param y
/// @param z
/*
    devides x,y,z from the vector returning a new vector
    var v = tmc_vec3_div_vals(tmc_vec3(10,10,10),5,5,5);
*/
var v;
v[3] = argument0[3] / argument3;
v[2] = argument0[2] / argument2;
v[1] = argument0[1] / argument1;
v[0] = argument0[0];
return v;