/// @description tmc_vec3_to_vec2(tmc_vec3)
/// @param tmc_vec3
/*
    creates a new vec2 out of the vector

    var vec2 = tmc_vec3_to_vec2(tmc_vec3(1,2,3));
*/
var v;
v[2] = argument[2];
v[1] = argument[1];
v[0] = 2;
return v;