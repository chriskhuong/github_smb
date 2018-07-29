/// @description tmc_vec3_cross_io(io_tmc_vec3,tmc_vec3)
/// @param io_tmc_vec3
/// @param tmc_vec3
/*
    calculates the cross product between 2 vectors 
    and sets the result in io_tmc_vec3.
*/

var xx = argument0[2]*argument1[3] - argument0[3]*argument1[2],
    yy = argument0[3]*argument1[1] - argument0[1]*argument1[3],
    zz = argument0[1]*argument1[2] - argument0[2]*argument1[1];
    
argument0[@3] = zz;
argument0[@2] = yy;
argument0[@1] = xx;
