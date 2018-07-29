/// @description tmc_pill_change(tmc_pill,x1,y1,x2,y2,collision_radius,detection_radius)
/// @param tmc_pill
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param collision_radius
/// @param detection_radius
var pill = argument0;
pill[0] = tmc_segment(tmc_vect2(argument1,argument2),tmc_vect2(argument3,argument4))
pill[1] = argument5;
pill[2] = argument6;