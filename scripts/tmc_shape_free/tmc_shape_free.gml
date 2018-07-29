/// @description tmc_shape_free(tmc_shape)
/// @param tmc_shape

tmc_segment_list_free(argument0[0]); //free segment_list
argument0[0] = 0;
tmc_segment_free(argument0[1]); //free the extent segment
argument0[1] = 0; 
argument0[2] = 0;
argument0 = 0;