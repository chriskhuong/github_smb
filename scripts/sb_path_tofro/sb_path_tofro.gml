///sb_seek(x, y, weight)
///return a vector for the steering direction to go towards the given point

var _path = argument[0];
var _max_distance = argument[1];
var _dir = argument[2];
var _weight = argument[3];

var _target_x = path_get_point_x(path, my_path_point);
var _target_y = path_get_point_y(path, my_path_point);
var _target = vect2(target_x, target_y);

var _distance_to_point = vect_len(vect_subtract(_target, position));

if(_distance_to_point < _max_distance)
	{
		my_path_point += sign(_dir);
		if (my_path_point > path_get_number(_path) - 1)
			{
				my_path_point -= 2;
				my_path_dir *= -1;
			}
		if (my_path_point < 0)
			{
				my_path_point += 2;
				my_path_dir *= -1;
			}
	}

//subtract current position from target position and constrain to max speed
var _desired_velocity = vect_scaler(vect_subtract(_target, position), spd);

return (vect_multr(vect_subtract(_desired_velocity, velocity), _weight));