/// @description tmc_vec2_set_vals_io(io_tmc_vec2,x,y)
/// @param io_tmc_vec2
/// @param x
/// @param y
/*
    sets the input output io_tmc_vec2 to the value of x,y
    allowing to reuse of an existing vector
    var io = tmc_vec2(10,10);
    tmc_vec2_set_vals_io(io,20,20);
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@2] = argument2;
argument0[@1] = argument1;