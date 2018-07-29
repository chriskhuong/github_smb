/// @description tmc_vec4_pow_o(tmc_vec4,tmc_vec4,o_tmc_vec4)
/// @param tmc_vec4
/// @param tmc_vec4
/// @param o_tmc_vec4
/*
    sets o_tmc_vec4 to the values of the first vector power to the second
*/

argument2[@4] = power(argument0[4],argument1[4]);
argument2[@3] = power(argument0[3],argument1[3]);
argument2[@2] = power(argument0[2],argument1[2]);
argument2[@1] = power(argument0[1],argument1[1]);
argument2[@0] = argument0[0];