/// @description tmc_vec2_scale_r_io(io_tmc_vec2,real)
/// @param io_tmc_vec2
/// @param real
/*
    scales a vector to the length of specified real
    does not return a vector
    io_tmc_vec2 is modified with the new length
    assuming the vector is a scalar of a define length (not 0,0,0,0)
    var io = tmc_vec2(10,10,10);
    tmc_scale_r(io,5);
*/
tmc_vec2_norm_io(argument0);
argument0[@2] = argument0[2] * argument1;
argument0[@1] = argument0[1] * argument1;

