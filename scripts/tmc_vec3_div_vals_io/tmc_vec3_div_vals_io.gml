/// @description tmc_vec3_div_vals_io(io_tmc_vec3,x,y,z)
/// @param io_tmc_vec3
/// @param x
/// @param y
/// @param z
/*
    devides x,y,z from the vector WITHOUT returning a new vector
    io_tmc_vec3 serves as both input and output parameter
    var io = tmc_vec3(10,10,10);
    tmc_vec3_div_vals_io(io,10,10,10));
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@3] = argument0[3] / argument3;
argument0[@2] = argument0[2] / argument2;
argument0[@1] = argument0[1] / argument1;