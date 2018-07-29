/// @description tmc_segment_set_extra_data(tmc_segment,data)
/// @param tmc_segment
/// @param data
//sets the extra data to the tmc_segment
//extra data is user defined data passed along to follow the segment
//useful to add information to the segment, such as pah speed in a path, restitution, friction and so on
//data can be a real, a string or an array
//if you set the extra data to an array, calling this with0 will free it
argument0[3] = argument1;