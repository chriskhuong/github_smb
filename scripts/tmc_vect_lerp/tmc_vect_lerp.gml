/// @description tmc_vect_lerp(vect1,vect2,lerp)
/// @param vect1
/// @param vect2
/// @param lerp
//lerp between vect1 and vect2

var i;
var v1 = argument0;
var v2 = argument1;
var lrp = argument2;
var v;

var num = v1[0];
var tot = 0;
v[0] = num;
for(i=1; i<= num; i++)
{
    v[i] = lerp(v1[i],v2[i],lrp);
}

return v;