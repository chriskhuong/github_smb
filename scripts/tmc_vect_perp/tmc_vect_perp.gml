/// @description tmc_vect_perp(vect)
/// @param vect
//perpendicular vector for the vector
//only works on the first 2 values, since this only 
//has meaning in 2d

var i;
var v1 = argument0;
var v;

var num = v1[0];
v[0] = num;
v[1] = -v1[2];
v[2] = v1[1];
//keep the rest
if(num>2) v[3] = v1[3];
if(num>3) v[4] = v1[4];
return v;