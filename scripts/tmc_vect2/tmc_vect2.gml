/// @description  tmc_vect2(x,y)
/// @param x
/// @param y
//creates a 2d vector
//usage
// v = vect2(10,10)
// num_components = v[0]; // == 2
// x = v[1];
// y = v[2];

var v;
//added extra data, reversed the set order and incudes the unused axis
v[5] = 0; //extra data
v[4] = 0; //a
v[3] = 0; //z
v[2] = argument1;
v[1] = argument0;
v[0] = 2;

return v;