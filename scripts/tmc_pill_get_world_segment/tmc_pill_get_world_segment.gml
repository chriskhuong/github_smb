/// @description tmc_pill_get_world_segment(tmc_pill,x,y)
/// @param tmc_pill
/// @param x
/// @param y
//rerturns the line segment of the pill in world  coords
var pill = argument0;
var xx = argument1;
var yy = argument2;
var segment = pill[0];
var p1 = segment[1];
var p2 = segment[2];
return tmc_segment(tmc_vect2(p1[1]+xx,p1[2]+yy),tmc_vect2(p2[1]+xx,p2[2]+yy));