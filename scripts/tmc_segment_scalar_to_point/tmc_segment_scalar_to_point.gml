/// @description tmc_segment_scalar_to_point(tmc_segment1,tmc_vect)
/// @param tmc_segment1
/// @param tmc_vect
//returns the shortest distance in a scalar vector format 
//from segment1 to tmc_vect (a point coord) 
//you can convert the scalar to a distance with tmc_vect_dist or tmc_vect_len
//the line cannot be 0 lengths
//http://geomalgorithms.com/a02-_lines.html#Distance-to-Ray-or-Segment

var S = argument0;
var P = argument1;
return tmc_segment_scalar_to_segment(S,
        tmc_segment(P,
            tmc_vect_add(P,tmc_vect_scalar(S[1],P)
        )))
    
 