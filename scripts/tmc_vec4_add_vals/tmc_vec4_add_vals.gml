/// @description tmc_vec4_add_vals(tmc_vec4,x,y,z,a)
/// @param tmc_vec4
/// @param x
/// @param y
/// @param z
/// @param a
/*
    add the x,y,z,a to the vector returning a new vector
    var v = tmc_vec4_add_vals(tmc_vec4(10,10,10,10),5,10,15,20);
*/
var v;
v[4] = argument0[4] + argument4;
v[3] = argument0[3] + argument3;
v[2] = argument0[2] + argument2;
v[1] = argument0[1] + argument1;
v[0] = argument0[0];
return v;