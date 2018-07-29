/// @description tmc_vec4_clamp(tmc_vec4,tmc_vec4_min,tmc_vec4_max)
/// @param tmc_vec4
/// @param tmc_vec4_min
/// @param tmc_vec4_max
/*
    clamp the vector to between the min and val values
    returning a new vector
    var v = tmc_vec4_clamp(tmc_vec4(100,100,100,100),tmc_vec4(0,0,0,0),tmc_vec4(10,10,10,10))
*/
var v;
v[4] = clamp(argument0[4],argument1[4],argument2[4]);
v[3] = clamp(argument0[3],argument1[3],argument2[3]);
v[2] = clamp(argument0[2],argument1[2],argument2[2]);
v[1] = clamp(argument0[1],argument1[1],argument2[1]);
v[0] = argument0[0];
return v;