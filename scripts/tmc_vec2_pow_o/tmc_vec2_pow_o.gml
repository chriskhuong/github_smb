/// @description tmc_vec2_pow_o(tmc_vec2,tmc_vec2,o_tmc_vec2)
/// @param tmc_vec2
/// @param tmc_vec2
/// @param o_tmc_vec2
/*
    sets o_tmc_vec2 to the values of the first vector power to the second
*/

argument2[@2] = power(argument0[2],argument1[2]);
argument2[@1] = power(argument0[1],argument1[1]);
argument2[@0] = argument0[0];