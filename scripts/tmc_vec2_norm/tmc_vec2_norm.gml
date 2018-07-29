/// @description tmc_vec2_norm(tmc_vec2)
/// @param tmc_vec2
/*
    calculates the normal of a vector, assuming the vector is a scalar
    returning a new vector
    var v = tmc_vec2_norm(tmc_vec2(10,10));
*/
var l = tmc_vec2_len(argument0);
var v;
if(l!=0)
{
    v[2] = argument0[2]/l;
    v[1] = argument0[1]/l;
    v[0] = argument0[0];
}
else
{
    v[2] = argument0[2];
    v[1] = argument0[1];
    v[0] = argument0[0];
}
return v;