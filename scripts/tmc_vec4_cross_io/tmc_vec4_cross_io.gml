/// @description tmc_vec4_cross_io(io_tmc_vec4,tmc_vec4)
/// @param io_tmc_vec4
/// @param tmc_vec4
/*
    WARNING only the xyz values will be used
    calculates the cross product between 2 vectors 
    and sets the result in io_tmc_vec4.
*/
if(debug_mode) show_debug_message("WARNING-CrossProduct on vec4");

var xx = argument0[2]*argument1[3] - argument0[3]*argument1[2],
    yy = argument0[3]*argument1[1] - argument0[1]*argument1[3],
    zz = argument0[1]*argument1[2] - argument0[2]*argument1[1];
    
argument0[@4] = 0;
argument0[@3] = zz;
argument0[@2] = yy;
argument0[@1] = xx;
