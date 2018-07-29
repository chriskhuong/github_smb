/// @description tmc_vec4_rev_io(io_tmc_vec4)
/// @param io_tmc_vec4
/*
    reverses a vector, modifying the io_vec4
    var io = tmc_vec4(1,2,3,4)
    tmc_vec4_rev_io(io);
*/

argument0[@4] = -argument0[4];
argument0[@3] = -argument0[3];
argument0[@2] = -argument0[2];
argument0[@1] = -argument0[1];