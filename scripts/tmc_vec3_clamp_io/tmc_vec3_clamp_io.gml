/// @description tmc_vec3_clamp_io(io_tmc_vec3,tmc_vec3_min,tmc_vec3_max)
/// @param io_tmc_vec3
/// @param tmc_vec3_min
/// @param tmc_vec3_max
/*
    clamp the vector to between the min and val values
    the result is copied into io_tmc_vec3 so it changes the passed vector
    var v = tmc_vec3_clamp(tmc_vec3(100,100,100),tmc_vec3(0,0,0),tmc_vec3(10,10,10))
*/

argument0[@3] = clamp(argument0[3],argument1[3],argument2[3]);
argument0[@2] = clamp(argument0[2],argument1[2],argument2[2]);
argument0[@1] = clamp(argument0[1],argument1[1],argument2[1]);