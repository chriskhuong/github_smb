/// @description tmc_vec2_clamp_io(io_tmc_vec2,tmc_vec2_min,tmc_vec2_max)
/// @param io_tmc_vec2
/// @param tmc_vec2_min
/// @param tmc_vec2_max
/*
    clamp the vector to between the min and val values
    the result is copied into io_tmc_vec2 so it changes the passed vector
    var v = tmc_vec2_clamp(tmc_vec2(100,100),tmc_vec2(0,0),tmc_vec2(10,10))
*/
argument0[@2] = clamp(argument0[2],argument1[2],argument2[2]);
argument0[@1] = clamp(argument0[1],argument1[1],argument2[1]);