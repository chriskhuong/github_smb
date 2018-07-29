/// @description tmc_segment_list_get_extent(tmc_segemnt_list)
/// @param tmc_segemnt_list
//var seg_list = argument0;
//var iend = seg_list[0]+1;
var seg_list = argument0;
var iend = ds_list_size(seg_list);
var x1,y1,x2,y2,xx1,yy1,xx2,yy2,tx,ty;
x1 = 10000000000;
x2 = -10000000000;
y1 = 10000000000;
y2 = -10000000000;
var segment,point1,point2;
for(i = 0; i<iend; i++) 
{
    //segment = seg_list[i];
    segment = seg_list[|i];
    point1 = segment[1];
    xx1 = point1[1];
    yy1 = point1[2];
    point2 = segment[2];
    xx2 = point2[1];
    yy2 = point2[2];
    tx = min(xx1,xx2);
    x1 = min(x1,tx);
    tx = max(xx1,xx2);
    x2 = max(x2,tx);
    ty = min(yy1,yy2);
    y1 = min(y1,ty);
    ty = max(yy1,yy2);
    y2 = max(y2,ty);
}
return tmc_segment(tmc_vect2(x1,y1),tmc_vect2(x2,y2));