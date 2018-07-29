/// @description tmc_vec3_set_io(io_tmc_vec3,tmc_vec3)
/// @param io_tmc_vec3
/// @param tmc_vec3
/*
    sets the input output io_tmc_vec3 to the content of tmc_vec3
    var io = tmc_vec3(10,10,10);
    tmc_vec3_set_io(io,tmc_vec3(10,10,10));
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@3] = argument1[3];
argument0[@2] = argument1[2];
argument0[@1] = argument1[1];