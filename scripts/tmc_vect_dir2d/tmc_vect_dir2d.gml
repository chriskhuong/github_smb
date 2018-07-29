/// @description tmc_vect_dir2d(tmc_vect)
/// @param tmc_vect
//returns the 2d direction (0-360) of a vector using the xy components

var v1 = argument0;
return point_direction(0,0,v1[1],v1[2]);