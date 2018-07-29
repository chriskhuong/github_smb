/// @description tmc_vec4_add_io(io_tmc_vec4,tmc_vec4)
/// @param io_tmc_vec4
/// @param tmc_vec4
/*
    add the 2 vectors together WITHOUT returning a new vector
    io_tmc_vec4 serves as both input and output parameter
    var io = tmc_vec4(10,10,10,10);
    tmc_vec4_add_io(io,tmc_vec4(10,10,10,10));
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@4] = argument0[4] + argument1[4];
argument0[@3] = argument0[3] + argument1[3];
argument0[@2] = argument0[2] + argument1[2];
argument0[@1] = argument0[1] + argument1[1];