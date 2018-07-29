/// @description tmc_segment_list_debug_draw(tmc_segment_list,view_extent)
/// @param tmc_segment_list
/// @param view_extent
var segmentct = tmc_segment_list_size(argument0);
var segmentat;
var segment;
for(segmentat = 0;segmentat<segmentct; segmentat++)
{
    segment = argument0[|segmentat];
    if(tmc_segment_aabb(segment,argument1))
    {
        tmc_segment_debug_draw_line(segment);
    }
}