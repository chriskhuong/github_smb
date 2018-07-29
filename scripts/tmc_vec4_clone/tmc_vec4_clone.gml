/// @description tmc_vec4_clone(tmc_vec4)
/// @param tmc_vec4
/*
    creates a vec4 from an existing tmc_vec4
    var v = tmc_vec4_clone(an_existing_vec4);
*/
var v;
v[4] = argument0[4];
v[3] = argument0[3];
v[2] = argument0[2];
v[1] = argument0[1];
v[0] = argument0[0];
return v;