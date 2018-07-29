/// @description tmc_vec2_to_vec4(tmc_vec2)
/// @param tmc_vec2
/*
    creates a new vec4 out of the vector
    var vec4 = tmc_vec2_to_vec4(tmc_vec2(1,2));
*/
var v;
v[4] = 0;
v[3] = 0;
v[2] = argument[2];
v[1] = argument[1];
v[0] = 4;
return v;