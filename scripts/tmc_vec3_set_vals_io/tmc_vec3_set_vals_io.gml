/// @description tmc_vec3_set_vals_io(io_tmc_vec3,x,y,z)
/// @param io_tmc_vec3
/// @param x
/// @param y
/// @param z
/*
    sets the input output io_tmc_vec3 to the value of x,y,z
    allowing to reuse of an existing vector
    var io = tmc_vec3(10,10,10);
    tmc_vec3_set_vals_io(io,20,20,20);
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@3] = argument3;
argument0[@2] = argument2;
argument0[@1] = argument1;