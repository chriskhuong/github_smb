/// @description tmc_vec4_len(tmc_vec4)
/// @param tmc_vec4
/*
    returns the len of a vector, asuming the vector is a scalar
    var l = tmc_vec4_len(tmc_vec4(10,10,10,10));
*/
var tot = argument0[1]*argument0[1];
tot+=argument0[2]*argument0[2];
tot+=argument0[3]*argument0[3];
tot+=argument0[4]*argument0[4];
if(tot!=0)
{
    tot = sqrt(tot);
}
return tot;