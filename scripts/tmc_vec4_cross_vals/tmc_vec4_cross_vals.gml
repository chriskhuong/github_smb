/// @description tmc_vec4_cross_vals(tmc_vec4,x,y,z,a)
/// @param tmc_vec4
/// @param x
/// @param y
/// @param z
/// @param a
/*
    WARNING only the xyz values will be used
    returns the cross product between the vectors and x,y,z,a
*/
if(debug_mode) show_debug_message("WARNING-CrossProduct on vec4");
var v;
v[4] = 0;
v[3] = argument0[1]*argument2 - argument0[2]*argument1;
v[2] = argument0[3]*argument1 - argument0[1]*argument3;
v[1] = argument0[2]*argument3 - argument0[3]*argument2;
v[0] = 4;
return v;