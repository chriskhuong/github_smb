/// @description  Step Behaviour Usage

#region Behavior
myState = "WanderSteer";
movement = MOVE;
counter += 1;
max_speed = spd;

// reset steering
steering = vect2(0,0);

//## Steering Behaviours go below here ##//
					
					// Add like this. (First one doesn't need the vect_add)
					//steering = vect_add(steering, sb_#behaviour#(argument,stuff,blah));
					
					//steering = vect_add(steering, sb_seek(mouse_x, mouse_y, 1));
					//steering = vect_add(steering, sb_seek_arrive(mouse_x,mouse_y,256,1));
					steering = vect_add(steering, sb_wander(256,128,180,0.5));
					//steering = vect_add(steering, sb_flee(mouse_x,mouse_y,1));
					//steering = vect_add(steering, sb_pursuit(obj_master_drone,1));
					//steering = vect_add(steering, sb_evade(obj_master_drone,1));
					//steering = vect_add(steering, sb_path_loop(my_path,30,my_path_dir,1));
					steering = vect_add(steering, sb_alignment_grid(4,grid_controller,1));
					steering = vect_add(steering, sb_separation_grid(3,grid_controller,3));
					steering = vect_add(steering, sb_cohesion_grid(5,grid_controller,2));
					steering=vect_add(steering,sb_avoid(obj_breakableParent,64,64,5));
					steering=vect_add(steering,sb_avoid(obj_invisibleBoundary,64,64,5));
					steering=vect_add(steering,sb_avoid(obj_solidParent,64,64,5));
					
					//## Steering Behaviours go above here ##//
					
					//Limit steering by max_force
					steering = vect_truncate(steering, max_force); 
					
					// Limit velocity to max_speed
					velocity = vect_truncate(vect_add(velocity, steering),max_speed); 
					
					//Add velocity to position
					position = vect_add(position, velocity);
					
					//update xy
					x = position[1];
					y = position[2];

//image_angle = vect_direction(velocity);

#endregion

#region Transition Trigger

if (counter >= room_speed * 3)
	{
		var change = choose(0, 1);
		switch(change)
			{
				case 0:
					state = sIdle;
				
				case 1:
					counter = 0;
					
				break;
			}
	}

#endregion

#region Sprite
sprite_index = sprite[character, movement];
dir = point_direction(x, y, xprevious, yprevious);

if (dir < 225 && dir > 135)
	{	//facing left
		image_xscale = -1;
	}
if (dir > 315 && dir <= 360 || dir >= 0 && dir < 45)
	{	//facing right
		image_xscale = 1;
	}
if (image_xscale > 0)
	{	//facing right
		myTargetX = x - 64;
	}
else
	{
		myTargetX = x + 64;
	}
myTargetY = y;

//faciing up and down
#endregion