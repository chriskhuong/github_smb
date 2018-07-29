/// @description  tmc_vect3(x,y,z)
/// @param x
/// @param y
/// @param z
//creates a 3d vector
//usage
// v = vect3(10,10,10)
// num_components = v[0]; // == 3
// x = v[1];
// y = v[2];
// z = v[3];
var v;
//added extra data, reversed the set order and incudes the unused axis
v[5] = 0; //extra data
v[4] = 0; //a
v[3] = argument2;
v[2] = argument1;
v[1] = argument0;
v[0] = 3;
return v;