/// @description tmc_vec2_perp2(tmc_vec2,tmc_vec2)
/// @param tmc_vec2
/// @param tmc_vec2
/*
    returns the perpendicular between 2 points
*/
return tmc_vec2_perp(
            tmc_vec2(
                (argument0[1]+argument1[1])/2,
                (argument0[2]+argument1[2])/2
            ));