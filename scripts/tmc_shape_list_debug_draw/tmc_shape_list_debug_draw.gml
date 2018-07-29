/// @description tmc_shape_list_debug_draw(tmc_shape_list, draw_extent)
/// @param tmc_shape_list
/// @param  draw_extent

var shapeat;
var shapect = tmc_shape_list_size(argument0);
for(shapeat = 0; shapeat<shapect; shapeat++)
{
    tmc_shape_debug_draw(argument0[|shapeat], argument1)
}