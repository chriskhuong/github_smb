/// @description tmc_vec3_to_vec4(tmc_vec3)
/// @param tmc_vec3
/*
    creates a new vec4 out of the vector
    var vec4 = tmc_vec3_to_vec4(tmc_vec3(1,2,3));
*/
var v;
v[4] = 0;
v[3] = argument[3];
v[2] = argument[2];
v[1] = argument[1];
v[0] = 4;
return v;