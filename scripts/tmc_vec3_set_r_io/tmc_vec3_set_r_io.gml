/// @description tmc_vec3_set_r_io(io_tmc_vec3,real)
/// @param io_tmc_vec3
/// @param real
/*
    sets the input output io_tmc_vec3 to the value of real
    var io = tmc_vec3(10,10,10);
    tmc_vec3_set_r_io(io,10);
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@3] = argument1;
argument0[@2] = argument1;
argument0[@1] = argument1;