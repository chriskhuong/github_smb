/// @description tmc_vec2_scale_r_o(tmc_vec2,real,o_tmc_vec2)
/// @param tmc_vec2
/// @param real
/// @param o_tmc_vec2
/*
    scales a vector to the length of specified real
    does not return a vector
    o_tmc_vec2 is modified with the new length
    assuming the vector is a scalar of a define length (not 0,0,0,0)
    var o = tmc_vec2(0,0);
    tmc_scale_r(tmc_vec2(1,2),5,o);
*/
var l = tmc_vec2_len(argument0);
if(l!=0)
{
    argument2[2] = argument0[2]/l * argument1;
    argument2[1] = argument0[1]/l * argument1;
    argument2[0] = argument0[0];
}
else
{
    argument2[2] = argument0[2];
    argument2[1] = argument0[1];
    argument2[0] = argument0[0];
}


