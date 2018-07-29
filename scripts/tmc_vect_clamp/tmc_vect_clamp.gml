/// @description tmc_vect_clamp(vect,vectLower,vectUpper)
/// @param vect
/// @param vectLower
/// @param vectUpper
//clamp vect to the limits defined by to vectLower and vectUpper

var i;
var v1 = argument0;
var v2 = argument1;
var v3 = argument2;
var v;

var num = v1[0];
var tot = 0;
v[0] = num;
for(i=1; i<= num; i++)
{
    v[i] = clamp(v1[i],v2[i],v3[i]);
}

return v;