/// @description tmc_vec_rot2d_io(io_tmc_vec,angle)
/// @param io_tmc_vec
/// @param angle
/*
    rotates the vector x,y (ie along the z axis) by the amount specified
    this may distort a non vec2 vector
    io_tmc_vec is the souce and will be modified with the new value
*/

var vr;
var a = point_direction(0,0,argument0[1],argument0[2]);
var d = point_distance(0,0,argument0[1],argument0[2]);
a+=argument1;

argument0[@1] = lengthdir_x(d,a);
argument0[@2] = lengthdir_y(d,a);
