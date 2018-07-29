/// @description tmc_vec4_scalar_vals_io(io_tmc_vec4,x,y,z,a)
/// @param io_tmc_vec4
/// @param x
/// @param y
/// @param z
/// @param a
/*
    calculate the scalar between x,y,z,a and the vector WITHOUT returning a new vector
    io_tmc_vec4 serves as both input and output parameter
    var io = tmc_vec4(10,10,10,10);
    tmc_vec4_scalar_vals_io(io,10,20,30,40));
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@4] = argument4 - argument0[4];
argument0[@3] = argument3 - argument0[3];
argument0[@2] = argument2 - argument0[2];
argument0[@1] = argument1 - argument0[1];