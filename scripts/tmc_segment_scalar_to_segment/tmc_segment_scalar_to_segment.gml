/// @description tmc_segment_scalar_to_segment(tmc_segment1,tmc_segment2)
/// @param tmc_segment1
/// @param tmc_segment2
//returns the shortest distance in a scalar vector format 
//from segment1 to sedment2 
//you can convert the scalar to a distance with tmc_vect_dist or tmc_vect_len
//if the scalar is 0 length, you can assume the lines intersect or touch
//consider using tmc_segment_line_to_segment which will hold all you need
//for determining line interect, position on the line and distance between lines
//the lines cannot be 0 lengths
var line = tmc_segment_line_to_segment(argument0,argument1);
return tmc_segment_scalar(line);