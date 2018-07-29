/// @description tmc_vec2_clamp(tmc_vec2,tmc_vec2_min,tmc_vec2_max)
/// @param tmc_vec2
/// @param tmc_vec2_min
/// @param tmc_vec2_max
/*
    clamp the vector to between the min and val values
    returning a new vector
    var v = tmc_vec2_clamp(tmc_vec2(100,100),tmc_vec2(0,0),tmc_vec2(10,10))
*/
var v;
v[2] = clamp(argument0[2],argument1[2],argument2[2]);
v[1] = clamp(argument0[1],argument1[1],argument2[1]);
v[0] = argument0[0];
return v;