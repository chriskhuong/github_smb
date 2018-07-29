/// @description tmc_vec3_clone(tmc_vec3)
/// @param tmc_vec3
/*
    creates a vec3 from an existing tmc_vec3
    var v = tmc_vec4_clone(an_existing_vec3);
*/
var v;
v[3] = argument0[3];
v[2] = argument0[2];
v[1] = argument0[1];
v[0] = argument0[0];
return v;