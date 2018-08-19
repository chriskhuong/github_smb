/// @description sb_separation(object type, check radius, weight)

var _force = vect2(0, 0);
var _neighbor_count = 0;
var _obj = argument[0];
var _radius = argument[1];
var _weight = argument[2];

with(_obj)
	{
		if(id != other.id && point_distance(x, y, other.x, other.y) < _radius)
			{
				//calculate force away from neighbors
				_force[1] += x - other.x;
				_force[2] += y - other.y;
				_neighbor_count++;
			}
	}

if (_neighbor_count != 0)
	{
		_force = vect_scaler(_force, (_radius/2)*-1);
	}

return(vect_multr(_force, _weight));