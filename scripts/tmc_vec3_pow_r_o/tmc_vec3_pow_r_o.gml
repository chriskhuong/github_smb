/// @description tmc_vec3_pow_r_o(tmc_vec3,real,o_tmc_vec3)
/// @param tmc_vec3
/// @param real
/// @param o_tmc_vec3
/*
    sets o_tmc_vec3 to the values of the first vector power of the real value
*/

argument2[@3] = power(argument0[3],argument1);
argument2[@2] = power(argument0[2],argument1);
argument2[@1] = power(argument0[1],argument1);
argument2[@0] = argument0[0];