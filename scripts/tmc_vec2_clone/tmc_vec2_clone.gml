/// @description tmc_vec2_clone(tmc_vec2)
/// @param tmc_vec2
/*
    creates a vec2 from an existing tmc_vec2
    var v = tmc_vec4_clone(an_existing_vec2);
*/
var v;
v[2] = argument0[2];
v[1] = argument0[1];
v[0] = argument0[0];
return v;