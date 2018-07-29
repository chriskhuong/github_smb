/// @description tmc_segment_distance_to_point(tmc_segment1,tmc_vect)
/// @param tmc_segment1
/// @param tmc_vect
//returns the shortest distance 
//from segment1 to tmc_vect (a point coord) 
//the line cannot be 0 lengths
//http://geomalgorithms.com/a02-_lines.html#Distance-to-Ray-or-Segment

var S = argument0;
var P = argument1;
return tmc_segment_distance_to_segment(S,
        tmc_segment(P,
            tmc_vect_add(P,tmc_vect_scalar(S[1],P)
        )))
    
 