/// @description tmc_segment_line_to_point(tmc_segment1,tmc_vect)
/// @param tmc_segment1
/// @param tmc_vect
//returns a line covering the shortest distance  
//from segment1 to point tmc_vect 
//you can convert to distance with tmc_segment_scalar
//the lines cannot be 0 lengths

var S = argument0;
var P = argument1;
return tmc_segment_line_to_segment(S,
        tmc_segment(P,
            tmc_vect_add(P,tmc_vect_scalar(S[1],P)
        )))
    
 