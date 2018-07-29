/// @description tmc_vec2_set_r_io(io_tmc_vec2,real)
/// @param io_tmc_vec2
/// @param real
/*
    sets the input output io_tmc_vec2 to the value of real
    var io = tmc_vec2(10,10);
    tmc_vec2_set_r_io(io,10);
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@2] = argument1;
argument0[@1] = argument1;