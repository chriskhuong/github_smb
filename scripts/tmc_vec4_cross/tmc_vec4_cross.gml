/// @description tmc_vec4_cross(tmc_vec4,tmc_vec4)
/// @param tmc_vec4
/// @param tmc_vec4
/*
    WARNING only the xyz values will be used
    returns the cross product between 2 vectors as a new vector
*/
if(debug_mode) show_debug_message("WARNING-CrossProduct on vec4");
var v;
v[4] = 0;
v[3] = argument0[1]*argument1[2] - argument0[2]*argument1[1];
v[2] = argument0[3]*argument1[1] - argument0[1]*argument1[3];
v[1] = argument0[2]*argument1[3] - argument0[3]*argument1[2];
v[0] = 4;
return v;