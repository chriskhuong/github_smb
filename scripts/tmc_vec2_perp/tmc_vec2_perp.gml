/// @description tmc_vec2_perp(vect)
/// @param vect
/*
  returns perpendicular vector for the scalar vector
*/
var v;
v[2] = argument0[1];
v[1] = -argument0[2];
v[0] = 2;
return v;