///@description scr_E_pathChaseState()

#region Behavior
myState = "ChaseSteer";
movement = MOVE;
max_speed = spd;
target = instance_nearest(x, y, obj_playerParent);

var mx = target.x;
var my = target.y + 35;

steering = vect2(0, 0);

#region Steering Behaviors

// Add like this. (First one doesn't need the vect_add)
//steering = vect_add(steering, sb_#behaviour#(argument,stuff,blah));

//steering = vect_add(steering, sb_seek(mouse_x, mouse_y, 1));
//steering = vect_add(steering, sb_seek_arrive(mouse_x,mouse_y,256,1));
//steering = vect_add(steering, sb_wander(128,128,180,0.5));
steering=vect_add(steering,sb_separation(obj_enemyParent,32,2));
steering=vect_add(steering,sb_avoid(obj_breakableParent,64,64,5));
steering=vect_add(steering,sb_avoid(obj_invisibleBoundary,64,64,5));
steering=vect_add(steering,sb_avoid(obj_solidParent,64,64,5));
//steering = vect_add(steering, sb_flee(mouse_x,mouse_y,1));
//steering = vect_add(steering, sb_pursuit(obj_master_drone,1));
//steering = vect_add(steering, sb_evade(obj_master_drone,1));
if (timer <= 0)
	{
		if (mp_grid_path(obj_grid.grid, path, x, y, mx, my, 1))
			{
				steering = vect_add(steering, sb_path_loop(path,30,my_path_dir,1));
			}
		timer = maxTimer;
		show_debug_message(timer);
	}
//steering = vect_add(steering, sb_alignment(par_drone,128,1));
//steering = vect_add(steering, sb_separation(par_drone,64,3));
//steering = vect_add(steering, sb_cohesion(par_drone,184,2));
//steering = vect_add(steering, sb_avoid_collision(par_obstacle,80,30,1));

#endregion

//Limit steering by max_force
steering = vect_truncate(steering, max_force);

//Limit velocity to max_speed
velocity = vect_truncate(vect_add(velocity, steering), spd);

//Add velocity to position
position = vect_add(position, velocity);

x = position[1];
y = position[2];

timer -= 1;

#endregion

#region Transition Trigger


#endregion

#region oldPath
/*
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
#endregion

#region Sprite
sprite_index = sprite[character, movement];
dir = point_direction(target.x, target.y, x, y);

if (dir < 270 && dir > 90)
	{
		image_xscale = -1;
	}
else
	{
		image_xscale = 1;
	}
	
#endregion