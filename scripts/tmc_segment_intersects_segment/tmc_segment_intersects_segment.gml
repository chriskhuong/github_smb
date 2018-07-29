/// @description tmc_segment_intersects_segment(tmc_segment1,tmc_segment1)
/// @param tmc_segment1
/// @param tmc_segment1
//returns if the 2 lines intersect
//consider using tmc_segment_line_to_segment which will hold all you need
//for determining line interect, position on the line and distance between lines
//the lines cannot be 0 lengths

return 0==tmc_segment_distance_to_segment(argument0,argument1);