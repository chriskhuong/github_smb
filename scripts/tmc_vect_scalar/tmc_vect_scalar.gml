/// @description tmc_vect_scalar(vect1, vect2)
/// @param vect1
/// @param  vect2
//returns the scalar between vect1 and vect2
var i;
var v1 = argument0;
var v2 = argument1;
var v;

var num = min(v1[0],v2[0]);
v[0] = num;
for(i=1; i<= num; i++)
{
    v[i] = v2[i]-v1[i];
}
return v;