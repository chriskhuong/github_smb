/// @description tmc_vec3_cross_vals(tmc_vec3,x,y,z,a)
/// @param tmc_vec3
/// @param x
/// @param y
/// @param z
/// @param a
/*
    returns the cross product between the vectors and x,y,z,a
*/
var v;
v[3] = argument0[1]*argument2 - argument0[2]*argument1;
v[2] = argument0[3]*argument1 - argument0[1]*argument3;
v[1] = argument0[2]*argument3 - argument0[3]*argument2;
v[0] = 3;
return v;