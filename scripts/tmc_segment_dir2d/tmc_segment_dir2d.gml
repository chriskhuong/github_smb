/// @description tmc_segment_dir2d(tmc_segment)
/// @param tmc_segment
//returns the 2d direction of a segment from p1 to p2 using the xy components

var v1 = argument0[1];
var v2 = argument0[2];
return point_direction(v1[1],v1[2],v2[1],v2[2]);