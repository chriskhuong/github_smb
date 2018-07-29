/// @description tmc_vect_point_inside_triangle(Point, TriPT1, TriPT2, TriPT3)
/// @param Point
/// @param  TriPT1
/// @param  TriPT2
/// @param  TriPT3
/*
source: http://www.gamedev.net/topic/481835-3d-point-in-triangle-algorithm/
    returns if a point is inside the triangle
    Point is the point to check agaist in vector form
    TriP1 to P3 are the 3 triangle points in vector form
    This works only if the point is on the same plane of the triangle facet
*/

var Point = argument0,
    TriP1 = argument1,
    TriP2 = argument2,
    TriP3 = argument3;
var accumulator = 0,
    dot1 = 0,
    dot2 = 0,
    dot3 = 0;
//first angle
var line1 = tmc_vect_norm(tmc_vect_sub(TriP1,Point));
var line2 =tmc_vect_norm(tmc_vect_sub(TriP2,Point));
var fline = line1;
accumulator += arccos(tmc_vect_dot(line1,line2));

//second angle
var line1 = line2;//tmc_vect_norm(tmc_vect_sub(TriP2,Point));
var line2 =tmc_vect_norm(tmc_vect_sub(TriP3,Point));
accumulator += arccos(tmc_vect_dot(line1,line2));

var line1 = line2;//tmc_vect_norm(tmc_vect_sub(TriP3,Point));
var line2 =fline;//tmc_vect_norm(tmc_vect_sub(TriP1,Point));
accumulator += arccos(tmc_vect_dot(line1,line2));

return !(accumulator<degtorad(360));