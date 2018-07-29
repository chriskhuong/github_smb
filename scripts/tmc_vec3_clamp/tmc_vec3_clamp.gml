/// @description tmc_vec3_clamp(tmc_vec3,tmc_vec3_min,tmc_vec3_max)
/// @param tmc_vec3
/// @param tmc_vec3_min
/// @param tmc_vec3_max
/*
    clamp the vector to between the min and val values
    returning a new vector
    var v = tmc_vec3_clamp(tmc_vec3(100,100,100),tmc_vec3(0,0,0),tmc_vec3(10,10,10))
*/
var v;
v[3] = clamp(argument0[3],argument1[3],argument2[3]);
v[2] = clamp(argument0[2],argument1[2],argument2[2]);
v[1] = clamp(argument0[1],argument1[1],argument2[1]);
v[0] = argument0[0];
return v;