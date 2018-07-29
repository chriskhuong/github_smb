/// @description tmc_vec4_norm_o(tmc_vec4,o_tmc_vec4)
/// @param tmc_vec4
/// @param o_tmc_vec4
/*
    calculates the normal of a vector, assuming the vector is a scalar
    Does NOT return a new vector
    o_tmc_vec4 is used to return the normal... It basically normalises the vector
    var o = tmc_vec4(10,10,10,10);
    tmc_vec4_norm_o(tmc_vec4(10,10,10,10),o);
*/
var l = tmc_vec4_len(argument0);
if(l!=0)
{
    argument1[@4] = argument0[4]/l;
    argument1[@3] = argument0[3]/l;
    argument1[@2] = argument0[2]/l;
    argument1[@1] = argument0[1]/l;
    argument1[@0] = argument0[0];
}
else
{
    argument1[@4] = argument0[4];
    argument1[@3] = argument0[3];
    argument1[@2] = argument0[2];
    argument1[@1] = argument0[1];
    argument1[@0] = argument0[0];
}
