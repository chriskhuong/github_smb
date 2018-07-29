/// @description tmc_segment_distance_to_segment(tmc_segment1,tmc_segment2)
/// @param tmc_segment1
/// @param tmc_segment2
//returns the shortest distance 
//from segment1 to sedment2 
//consider using tmc_segment_line_to_segment which will hold all you need
//for determining line interect, position on the line and distance between lines
//the lines cannot be 0 lengths
var s1 = argument0;
var s2 = argument1;
var scalar = tmc_segment_scalar_to_segment(s1,s2);
var ret = tmc_vect_len(scalar);
return ret;