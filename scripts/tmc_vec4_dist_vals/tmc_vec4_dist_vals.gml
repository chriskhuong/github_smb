/// @description tmc_vec4_dist_vals(tmc_vec4,x,y,z,a)
/// @param tmc_vec4
/// @param x
/// @param y
/// @param z
/// @param a
/*
    returns the distance between x,y,z,a and the vector
    var l = tmc_vec4_dist_vals(tmc_vec4(10,10,10,10),20,20,20,20);
*/

return tmc_vec4_len(tmc_vec4_scalar_vals(argument0,argument1,argument2,argument3,argument4));