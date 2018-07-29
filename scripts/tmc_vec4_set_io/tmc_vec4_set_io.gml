/// @description tmc_vec4_set_io(o_tmc_vec4,tmc_vec4)
/// @param o_tmc_vec4
/// @param tmc_vec4
/*
    sets the input output io_tmc_vec4 to the content of tmc_vec4
    var io = tmc_vec4(10,10,10,10);
    tmc_vec4_set_io(io,tmc_vec4(10,10,10,10));
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@4] = argument1[4];
argument0[@3] = argument1[3];
argument0[@2] = argument1[2];
argument0[@1] = argument1[1];