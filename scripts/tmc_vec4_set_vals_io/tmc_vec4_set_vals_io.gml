/// @description tmc_vec4_set_vals_io(io_tmc_vec4,x,y,z,a)
/// @param io_tmc_vec4
/// @param x
/// @param y
/// @param z
/// @param a
/*
    sets the input output io_tmc_vec4 to the value of x,y,z,a
    allowing to reuse of an existing vector
    var io = tmc_vec4(10,10,10,10);
    tmc_vec4_set_vals_io(io,20,20,20,20);
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@4] = argument4;
argument0[@3] = argument3;
argument0[@2] = argument2;
argument0[@1] = argument1;