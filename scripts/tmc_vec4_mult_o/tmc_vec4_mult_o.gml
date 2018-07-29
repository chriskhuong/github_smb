/// @description tmc_vec4_mult_o(tmc_vec4,tmc_vec4,o_tmc_vec4)
/// @param tmc_vec4
/// @param tmc_vec4
/// @param o_tmc_vec4
/*
    mult the 2 vectors together WITHOUT returning a new vector
    o_tmc_vec4 serves as output parameter
    var o = tmc_vec4(10,10,10,10);
    tmc_vec4_mult_io(tmc_vec4(10,10,10,10),tmc_vec4(10,10,10,10),o);
    o will be modified and contain the result
    the method is faster than generating a new vector
*/
argument2[@4] = argument0[4] * argument1[4];
argument2[@3] = argument0[3] * argument1[3];
argument2[@2] = argument0[2] * argument1[2];
argument2[@1] = argument0[1] * argument1[1];