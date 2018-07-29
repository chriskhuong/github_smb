/// @description tmc_vec3(x,y,z)
/// @param x
/// @param y
/// @param z
/*
    creates a vec2 from x,y,z
    var v = tmc_vec3(10,10,10);
    where
    v[0] is the vector type (3)
    v[1] is the x element
    v[2] is the y element
    v[3] is the z element
*/
var v;
v[3] = argument2;
v[2] = argument1;
v[1] = argument0;
v[0] = 3;
return v;