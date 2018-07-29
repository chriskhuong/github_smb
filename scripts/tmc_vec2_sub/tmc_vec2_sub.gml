/// @description tmc_vec2_sub(tmc_vec2,tmc_vec2)
/// @param tmc_vec2
/// @param tmc_vec2
/*
    subtract the 2 vectors returning a new vector
    argument1 can be a same as or greater element count than argument0
    var v = tmc_vec2_sub(tmc_vec2(10,10),tmc_vec2(10,10));
*/
var v;
v[2] = argument0[2] - argument1[2];
v[1] = argument0[1] - argument1[1];
v[0] = argument0[0];
return v;