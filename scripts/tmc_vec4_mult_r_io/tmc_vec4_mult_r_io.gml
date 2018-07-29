/// @description tmc_vec4_mult_r_io(io_tmc_vec4,real)
/// @param io_tmc_vec4
/// @param real
/*
    multiplies the real with the vector WITHOUT returning a new vector
    io_tmc_vec4 serves as both input and output parameter
    var io = tmc_vec4(10,10,10,10);
    tmc_vec4_mult_r_io(io,10));
    io will be modified and contain the result
    the method is faster than generating a new vector
*/
argument0[@4] = argument0[4] * argument1;
argument0[@3] = argument0[3] * argument1;
argument0[@2] = argument0[2] * argument1;
argument0[@1] = argument0[1] * argument1;