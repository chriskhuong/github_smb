/// @description tmc_vec4_pow_r_o(tmc_vec4,real,o_tmc_vec4)
/// @param tmc_vec4
/// @param real
/// @param o_tmc_vec4
/*
    sets o_tmc_vec4 to the values of the first vector power of the real value
*/

argument2[@4] = power(argument0[4],argument1);
argument2[@3] = power(argument0[3],argument1);
argument2[@2] = power(argument0[2],argument1);
argument2[@1] = power(argument0[1],argument1);
argument2[@0] = argument0[0];