/// @description tmc_vec3_pow_o(tmc_vec3,tmc_vec3,o_tmc_vec3)
/// @param tmc_vec3
/// @param tmc_vec3
/// @param o_tmc_vec3
/*
    sets o_tmc_vec3 to the values of the first vector power to the second
*/

argument2[@3] = power(argument0[3],argument1[3]);
argument2[@2] = power(argument0[2],argument1[2]);
argument2[@1] = power(argument0[1],argument1[1]);
argument2[@0] = argument0[0];