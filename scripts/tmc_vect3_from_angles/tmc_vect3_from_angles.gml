/// @description tmc_vect3_from_angles(angle, zangle)
/// @param angle
/// @param  zangle
//returns a vect3 from the 2 angles
//angle is the rotation left right whiles standing on the xy plane, 
//better known as direction or image_angle
//zangle is the angle looking up or down while standing on the xy plane

var dcosza =  dcos(argument1);
return tmc_vect3(lengthdir_x(1,argument0) * dcosza ,
                 lengthdir_y(1,argument0) * dcosza ,
                 lengthdir_y(1,argument1));