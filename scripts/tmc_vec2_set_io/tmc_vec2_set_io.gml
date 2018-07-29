/// @description tmc_vec2_set_io(io_tmc_vec2,tmc_vec2)
/// @param io_tmc_vec2
/// @param tmc_vec2
/*
    sets the output io_tmc_vec2 to the content of tmc_vec2
    var io = tmc_vec4(0,0);
    tmc_vec2_set_io(io,tmc_vec2(10,10));
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@2] = argument1[2];
argument0[@1] = argument1[1];