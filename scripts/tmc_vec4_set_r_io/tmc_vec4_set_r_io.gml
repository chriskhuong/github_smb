/// @description tmc_vec4_set_r_io(io_tmc_vec4,real)
/// @param io_tmc_vec4
/// @param real
/*
    sets the input output io_tmc_vec4 to the value of real
    var io = tmc_vec4(10,10,10,10);
    tmc_vec4_set_r_io(io,10);
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@4] = argument1;
argument0[@3] = argument1;
argument0[@2] = argument1;
argument0[@1] = argument1;