///@description scr_E_pathChaseState()

//Behavior
myState = "Chase";
counter += 1;

target = instance_nearest(x, y, obj_Player);

var mx = target.x;
var my = target.y + 35;


if (mp_grid_path(obj_grid.grid, path, x, y, mx, my, 1))
	{
		path_start(path, spd, path_action_stop, false);
	}

/*
//Transition Triggers
if(!collision_circle(x, y, 64, obj_Player, false, false))
	{
		state = states.idle;
	}

if(collision_circle(x, y, 32, obj_Player, false, false))
	{
		state = states.attack;
	}
*/

//Sprite
dir = point_direction(target.x, target.y, x, y);

if (dir < 270 && dir > 90)
	{
		image_xscale = -1;
	}
else
	{
		image_xscale = 1;
	}