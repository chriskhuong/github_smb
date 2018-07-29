/// @description tmc_vec3_sub_o(tmc_vec3,tmc_vec3,o_tmc_vec3)
/// @param tmc_vec3
/// @param tmc_vec3
/// @param o_tmc_vec3
/*
    subtract the 2 vectors WITHOUT returning a new vector
    o_tmc_vec3 serves as output parameter
    var o = tmc_vec3(10,10,10);
    tmc_vec3_sub_io(tmc_vec3(1,2,3),tmc_vec3(10,10,10),o);
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument2[@3] = argument0[3] - argument1[3];
argument2[@2] = argument0[2] - argument1[2];
argument2[@1] = argument0[1] - argument1[1];