/// @description tmc_vec3_rev_io(io_tmc_vec3)
/// @param io_tmc_vec3
/*
    reverses a vector, modifying the io_vec3
    var io = tmc_vec3(1,2,3)
    tmc_vec3_rev_io(io);
*/

argument0[@3] = -argument0[3];
argument0[@2] = -argument0[2];
argument0[@1] = -argument0[1];