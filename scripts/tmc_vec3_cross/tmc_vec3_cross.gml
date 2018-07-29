/// @description tmc_vec3_cross(tmc_vec3,tmc_vec3)
/// @param tmc_vec3
/// @param tmc_vec3
/*
    returns the cross product between 2 vectors as a new vector
*/
var v;
v[3] = argument0[1]*argument1[2] - argument0[2]*argument1[1];
v[2] = argument0[3]*argument1[1] - argument0[1]*argument1[3];
v[1] = argument0[2]*argument1[3] - argument0[3]*argument1[2];
v[0] = 3;
return v;