/// @description  Step Behaviour Usage

#region Behavior
myState = "StunSteer";
movement = STUN;
max_speed = spd*2;
// reset steering
steering = vect2(0,0);

//## Steering Behaviours go below here ##//
					
					// Add like this. (First one doesn't need the vect_add)
					//steering = vect_add(steering, sb_#behaviour#(argument,stuff,blah));
					
					//steering = vect_add(steering, sb_seek(mouse_x, mouse_y, 1));
					steering = vect_add(steering, sb_seek_arrive(stunX,stunY,16,1));
					//steering = vect_add(steering, sb_wander(256,128,180,0.5));
					//steering = vect_add(steering, sb_flee(mouse_x,mouse_y,1));
					//steering = vect_add(steering, sb_pursuit(obj_master_drone,1));
					//steering = vect_add(steering, sb_evade(obj_master_drone,1));
					//steering = vect_add(steering, sb_path_loop(my_path,30,my_path_dir,1));
					//steering = vect_add(steering, sb_alignment(obj_enemyParent,128,1));
					steering = vect_add(steering, sb_separation(obj_enemyParent,64,3));
					//steering = vect_add(steering, sb_cohesion(obj_enemyParent,184,2));
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

stunFlick--;

if (stunFlick <= 0)
	{
		stunFlash = !stunFlash
		stunFlick = maxStunFlick;
	}

//image_angle = vect_direction(velocity);

hitStun--;

#endregion

#region Transition Trigger

if (hitStun <= 0)
	{
		state = sMove;
		stunFlash = false;
		hitStun = 0;
	}

#endregion

#region Sprite

//dir = point_direction(x, y, xprevious, yprevious);
sprite_index = sprite[character, movement];

if (dir < 225 && dir > 135)
	{	//facing left
		image_xscale = -1;
	}
if (dir > 315 && dir <= 360 || dir >= 0 && dir < 45)
	{	//facing right
		image_xscale = 1;
	}

//faciing up and down
#endregion