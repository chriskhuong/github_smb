/// @description tmc_vec3_cross_vals_io(io_tmc_vec3,x,y,z,a)
/// @param io_tmc_vec3
/// @param x
/// @param y
/// @param z
/// @param a
/*
    calculates the cross product between the vector and x,y,z,a
    and sets the result in io_tmc_vec3.
*/

var xx = argument0[2]*argument3 - argument0[3]*argument2,
    yy = argument0[3]*argument1 - argument0[1]*argument3,
    zz = argument0[1]*argument2 - argument0[2]*argument1;
    
argument0[@3] = zz;
argument0[@2] = yy;
argument0[@1] = xx;
