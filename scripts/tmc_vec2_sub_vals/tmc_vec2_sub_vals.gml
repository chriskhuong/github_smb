/// @description tmc_vec2_sub_vals(tmc_vec2,x,y)
/// @param tmc_vec2
/// @param x
/// @param y
/*
    subtract x,y from the vector returning a new vector
    var v = tmc_vec2_sub_vals(tmc_vec2(10,10),5,10);
*/
var v;
v[2] = argument0[2] - argument2;
v[1] = argument0[1] - argument1;
v[0] = argument0[0];
return v;