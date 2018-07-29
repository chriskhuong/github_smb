/// @description tmc_segment_aabb_fast(tmc_segment1,tmc_segment2)
/// @param tmc_segment1
/// @param tmc_segment2
//returns if the 2 segments (defining a bounding box each)
//are ovelapping. Assumes the both segments have
//point1 as upper left and point2 as lower right

var A = argument0;
var B = argument1;
var AP2 = A[2];
var BP1 = B[1];

if(AP2[1]<BP1[1]) return 0;
if(AP2[2]<BP1[2]) return 0;

var AP1 = A[1];
var BP2 = B[2];

if(BP2[1]<AP1[1]) return 0;
if(BP2[2]<AP1[2]) return 0;

return true;