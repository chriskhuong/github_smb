/// @description tmc_shape_list_free(tmc_shape_list)
/// @param tmc_shape_list

var shape_list = argument0;
var iend = ds_list_size(shape_list);
var i;
for(i = 0; i<iend; i++) 
{
    tmc_shape_free(shape_list[|i]);
}
ds_list_destroy(shape_list);