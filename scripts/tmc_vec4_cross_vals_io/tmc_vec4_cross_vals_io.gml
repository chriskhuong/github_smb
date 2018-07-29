/// @description tmc_vec4_cross_vals_io(io_tmc_vec4,x,y,z,a)
/// @param io_tmc_vec4
/// @param x
/// @param y
/// @param z
/// @param a
/*
    WARNING only the xyz values will be used
    calculates the cross product between the vector and x,y,z,a
    and sets the result in io_tmc_vec4.
*/
if(debug_mode) show_debug_message("WARNING-CrossProduct on vec4");

var xx = argument0[2]*argument3 - argument0[3]*argument2,
    yy = argument0[3]*argument1 - argument0[1]*argument3,
    zz = argument0[1]*argument2 - argument0[2]*argument1;
    
argument0[@4] = 0;
argument0[@3] = zz;
argument0[@2] = yy;
argument0[@1] = xx;
