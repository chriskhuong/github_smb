/// @description  tmc_vect4(x,y,z,a)
/// @param x
/// @param y
/// @param z
/// @param a
//creates a 4d vector
//usage
// v = vect4(10,10,10,10)
// num_components = v[0]; // == 4
// x = v[1];
// y = v[2];
// z = v[3];
// a = v[4];
var v;
//added extra data, reversed the set order and incudes the unused axis
v[5] = 0; //extra data
v[4] = argument3;
v[3] = argument2;
v[2] = argument1;
v[1] = argument0;
v[0] = 4;
return v;