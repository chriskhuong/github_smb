/// @description tmc_vec2_lerp(tmc_vec2,tmc_vec2,lerp)
/// @param tmc_vec2
/// @param tmc_vec2
/// @param lerp
/*
    lerps the values from the first to the second vector
    returning a new vector
    for(var i = 0; i<=1; i+=.01)
        var v = tmc_vec2_lerp(tmc_vec2(10,10),tmc_vec2(100,100,100,100),i)
*/
var v;
v[2] = lerp(argument0[2],argument1[2],argument2);
v[1] = lerp(argument0[1],argument1[1],argument2);
v[0] = argument0[0];
return v;