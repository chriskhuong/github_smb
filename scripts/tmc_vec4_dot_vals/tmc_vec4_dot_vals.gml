/// @description tmc_vec4_dot_vals(tmc_vec4,x,y,z,a)
/// @param tmc_vec4
/// @param x
/// @param y
/// @param z
/// @param a
/*
    returns the dot product between the vector and x,y,z,a
*/
var tot = argument0[4] * argument4;
tot+=argument0[3] * argument3;
tot+=argument0[2] * argument2;
tot+=argument0[1] * argument1;
return tot;