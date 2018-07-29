/// @description tmc_vec3_from_angles_o(angle, zangle, o_tmc_vec3)
/// @param angle
/// @param  zangle
/// @param  o_tmc_vec3
//sets o_tmc_vec3 x,y,z elements from the passed angles
//angle is the rotation left right whiles standing on the xy plane, 
//better known as direction or image_angle
//zangle is the angle looking up or down while standing on the xy plane

var dcosza =  dcos(argument1);
argument2[@3] = lengthdir_y(1,argument1);
argument2[@2] = lengthdir_y(1,argument0) * dcosza;
argument2[@1] = lengthdir_x(1,argument0) * dcosza;

