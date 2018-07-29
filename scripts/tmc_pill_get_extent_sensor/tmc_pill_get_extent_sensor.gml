/// @description tmc_pill_get_extent_sensor(tmc_pill,x,y)
/// @param tmc_pill
/// @param x
/// @param y
//rerturns the bounding boxes of the sensor of the pill at x,y
var pill = argument0;
var xx = argument1;
var yy = argument2;
var x1,y1,x2,y2;
var segment = tmc_segment_get_extent(pill[0]);
var point1 = segment[1];
var point2 = segment[2];
var r = pill[2]
    
    x1 = point1[1] -r +xx;
    x2 = point2[1] +r +xx;
    y1 = point1[2] -r +yy;
    y2 = point2[2] +r +yy;

return tmc_segment(tmc_vect2(x1,y1),tmc_vect2(x2,y2));