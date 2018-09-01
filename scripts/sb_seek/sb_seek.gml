///sb_seek(x, y, weight)
///return a vector for the steering direction to go towards the given point
var target = vect2(argument[0], argument[1]);
var weight = argument[2];

var desired_velocity = vect_scaler(vect_subtract(target, position), spd);

return(vect_multr(vect_subtract(desired_velocity, velocity), weight));