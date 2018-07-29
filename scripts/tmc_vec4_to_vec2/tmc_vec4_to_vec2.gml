/// @description tmc_vec4_to_vec2(io_tmc_vec4)
/// @param io_tmc_vec4
/*
    creates a new vec2 out of the vector

    var vec3 = tmc_vec4_to_vec3(tmc_vec4(1,2,3,4));
*/
var v;
v[2] = argument[2];
v[1] = argument[1];
v[0] = 2;
return v;