/// @description tmc_shape_create(tmc_segment_list)
/// @param tmc_segment_list
var shape;
shape[2] = 0; //extra data
shape[1] = tmc_segment_list_get_extent(argument0) //a tmc_segment with upper left and lower right extent
shape[0] = argument0; //segment_list
return shape;