/// @description tmc_vec4_dot_vals_norm(tmc_vec4,x,y,z,a)
/// @param tmc_vec4
/// @param x
/// @param y
/// @param z
/// @param a
/*
    returns the normalized dot product between the vector and x,y,z,a
*/
var v1 = tmc_vec4_norm(argument0);
var v2 = tmc_vec4_norm(tmc_vec4(argument1,argument2,argument3,argument4));
var tot = v1[4] * v2[4];
tot+=v1[3] * v2[3];
tot+=v1[2] * v2[2];
tot+=v1[1] * v2[1];
return tot/4;