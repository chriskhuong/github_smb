/// @description tmc_vect_rot2d(vect,angle)
/// @param vect
/// @param angle
//rotates a vector x,y along the x,y axis
//now, supports 3d/4d vectors, ignoring the extra axies
//you may need to re normalise the vector if it's a problem
var vr;
var v = argument0;
var a = point_direction(0,0,v[1],v[2]);
var d = point_distance(0,0,v[1],v[2]);
var num = v[0];
a+=argument1;
vr[0] = num;
vr[1] = lengthdir_x(d,a);
vr[2] = lengthdir_y(d,a);
//keep the rest
if(num>2) vr[3] = v[3];
if(num>3) vr[4] = v[4];
return vr;