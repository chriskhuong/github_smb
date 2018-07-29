/// @description tmc_vec4_lerp(tmc_vec4,tmc_vec4,lerp)
/// @param tmc_vec4
/// @param tmc_vec4
/// @param lerp
/*
    lerps the values from the first to the second vector
    returning a new vector
    for(var i = 0; i<=1; i+=.01)
        var v = tmc_vec4_lerp(tmc_vec4(10,10,10,10),tmc_vec4(100,100,100,100),i)
*/
var v;
v[4] = lerp(argument0[4],argument1[4],argument2);
v[3] = lerp(argument0[3],argument1[3],argument2);
v[2] = lerp(argument0[2],argument1[2],argument2);
v[1] = lerp(argument0[1],argument1[1],argument2);
v[0] = argument0[0];
return v;