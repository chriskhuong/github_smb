/// @description tmc_pill_debug_draw_bbox(tmc_pill,y,x)
/// @param tmc_pill
/// @param y
/// @param x
var c = draw_get_colour();
draw_set_color(c_lime)
tmc_segment_debug_draw_box( tmc_pill_get_extent_sensor(argument0,argument1,argument2))
draw_set_color(c_red)
tmc_segment_debug_draw_box( tmc_pill_get_extent_collision(argument0,argument1,argument2))
draw_set_color(c)