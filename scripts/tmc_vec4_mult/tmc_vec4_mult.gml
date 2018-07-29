/// @description tmc_vec4_mult(tmc_vec4,tmc_vec4)
/// @param tmc_vec4
/// @param tmc_vec4
/*
    multiplies the 2 vectors together returning a new vector
    var v = tmc_vec4_mult(tmc_vec4(10,10,10,10),tmc_vec4(10,10,10,10));
*/
var v;
v[4] = argument0[4] * argument1[4];
v[3] = argument0[3] * argument1[3];
v[2] = argument0[2] * argument1[2];
v[1] = argument0[1] * argument1[1];
v[0] = argument0[0];
return v;