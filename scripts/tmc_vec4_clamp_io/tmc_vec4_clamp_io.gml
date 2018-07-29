/// @description tmc_vec4_clamp_io(io_tmc_vec4,tmc_vec4_min,tmc_vec4_max)
/// @param io_tmc_vec4
/// @param tmc_vec4_min
/// @param tmc_vec4_max
/*
    clamp the vector to between the min and val values
    the result is copied into io_tmc_vec4 so it changes the passed vector
    var v = tmc_vec4_clamp(tmc_vec4(100,100,100,100),tmc_vec4(0,0,0,0),tmc_vec4(10,10,10,10))
*/

argument0[@4] = clamp(argument0[4],argument1[4],argument2[4]);
argument0[@3] = clamp(argument0[3],argument1[3],argument2[3]);
argument0[@2] = clamp(argument0[2],argument1[2],argument2[2]);
argument0[@1] = clamp(argument0[1],argument1[1],argument2[1]);