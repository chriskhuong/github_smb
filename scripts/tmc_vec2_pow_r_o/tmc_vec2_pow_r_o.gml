/// @description tmc_vec2_pow_r_o(tmc_vec2,real,o_tmc_vec2)
/// @param tmc_vec2
/// @param real
/// @param o_tmc_vec2
/*
    sets o_tmc_vec2 to the values of the first vector power of the real value
*/
argument2[@2] = power(argument0[2],argument1);
argument2[@1] = power(argument0[1],argument1);
argument2[@0] = argument0[0];