/// @description tmc_vec4(x,y,z,a)
/// @param x
/// @param y
/// @param z
/// @param a
/*
    creates a vec4 from x,y,z,a
    var v = tmc_vec4(10,10,10,10);
    where
    v[0] is the vector type (4)
    v[1] is the x element
    v[2] is the y element
    v[3] is the z element
    v[4] is the a element
*/
var v;
v[4] = argument3;
v[3] = argument2;
v[2] = argument1;
v[1] = argument0;
v[0] = 4;
return v;