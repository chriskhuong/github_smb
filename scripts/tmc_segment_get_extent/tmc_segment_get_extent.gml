/// @description tmc_segment_get_extent(tmc_segment)
/// @param tmc_segment
//returns the bounding boxes of the segment
//in a upper left, bottom right fashion
var segment = argument0;
var point1 = segment[1];
var point2 = segment[2];
var x1,x2,y1,y2;    
    x1 = min(point1[1],point2[1]);
    x2 = max(point1[1],point2[1]);
    y1 = min(point1[2],point2[2]);
    y2 = max(point1[2],point2[2]);

return tmc_segment(tmc_vect2(x1,y1),tmc_vect2(x2,y2));