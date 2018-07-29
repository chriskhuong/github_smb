/// @description tmc_vec4_add_r(tmc_vec4,real)
/// @param tmc_vec4
/// @param real
/*
    add the real to the vector returning a new vector
    var v = tmc_vec4_add_r(tmc_vec4(10,10,10,10),5);
*/
var v;
v[4] = argument0[4] + argument1;
v[3] = argument0[3] + argument1;
v[2] = argument0[2] + argument1;
v[1] = argument0[1] + argument1;
v[0] = argument0[0];
return v;