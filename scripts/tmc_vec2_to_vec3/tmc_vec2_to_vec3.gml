/// @description tmc_vec2_to_vec3(tmc_vec)
/// @param tmc_vec
/*
    creates a new vec3 out of the vector

    var vec3 = tmc_vec2_to_vec2(tmc_vec3(1,2));
*/
var v;
v[3] = 0;
v[2] = argument[2];
v[1] = argument[1];
v[0] = 3;
return v;