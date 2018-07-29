/// @description tmc_vec2_rev_io(io_tmc_vec2)
/// @param io_tmc_vec2
/*
    reverses a vector, modifying the io_vec2
    var io = tmc_vec2(1,2)
    tmc_vec2_rev_io(io);
*/

argument0[@2] = -argument0[2];
argument0[@1] = -argument0[1];