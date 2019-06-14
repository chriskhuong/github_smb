///@description scr_E_pathChaseState()

#region Behavior
myState = "ChaseSteer";
movement = MOVE;
max_speed = spd;

if (target != noone)
	{
		var mx = target.x;
		var my = target.y + 35;
	}

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
		var inst = instance_nearest(x, y, obj_playerParent);

		if (inst.alive && inst.invisible == false && distance_to_object(inst) < sight)
			{
				target = inst;
				//state = sChase;
			}
		else
			{
				var _num = instance_number(obj_playerParent);
				for(var i = 0; i < _num; i++)
					{
						var inst = instance_find(obj_playerParent, i);
						
						if (inst.alive && inst.invisible == false)
							{
								target = inst;
							}
						else
							{
								target = noone;
							}
					}
			}
		
		if (instance_exists(target))
			{
				if (mp_grid_path(obj_grid.grid, path, x, y, mx, my, 1))
					{
						steering = vect_add(steering, sb_path_loop(path,30,my_path_dir,1));
					}
			}
		else
			{
				state = choose(sIdle, sMove);
			}
		timer = maxTimer;
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

//update xy
if (place_meeting(position[1], position[2], solid_obj) || scr_tile_place_meeting(position[1], position[2], "Tile_Collision"))	//there's a collision
	{
		is_colliding = true;
		position[1] = x;
		position[2] = y;
	}
else
	{
		is_colliding = false;
		x = position[1];
		y = position[2];
	}

timer -= 1;

#endregion

#region Transition Trigger


#endregion

#region Sprite
sprite_index = sprite[character, movement];
if (target != noone)
	{
		dir = point_direction(target.x, target.y, x, y);
		
		if (dir < 270 && dir > 90)
			{
				image_xscale = -1;
			}
		else
			{
				image_xscale = 1;
			}
	}	
#endregion