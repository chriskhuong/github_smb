///@description wander_behavior()

#region Behavior
myState = "WanderSteer";
counter += 1;

steering = vect2(0, 0);

#region Steering Behaviors

// Add like this. (First one doesn't need the vect_add)
//steering = vect_add(steering, sb_#behaviour#(argument,stuff,blah));

//steering = vect_add(steering, sb_seek(mouse_x, mouse_y, 1));
//steering = vect_add(steering, sb_seek_arrive(mouse_x,mouse_y,256,1));
steering = vect_add(steering, sb_wander(128,128,180,0.5));
steering=vect_add(steering,sb_separation(obj_enemyParent,32,2));
steering=vect_add(steering,sb_avoid(obj_breakable_parent,64,64,5));
steering=vect_add(steering,sb_avoid(obj_invisibleBoundary,64,64,5));
steering=vect_add(steering,sb_avoid(obj_solidParent,64,64,5));
//steering = vect_add(steering, sb_flee(mouse_x,mouse_y,1));
//steering = vect_add(steering, sb_pursuit(obj_master_drone,1));
//steering = vect_add(steering, sb_evade(obj_master_drone,1));
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

#endregion

#region Transition Triggers



#endregion


#region Sprite Control



#endregion
//x += moveX;
//y += moveY;

////Transition Triggers
//if (counter >= room_speed * 3)
//	{
//		var change = choose(0, 1);
//		switch(change)
//			{
//				case 0: state = sIdle;
//				case 1: my_dir = irandom_range(0, 359);
//						moveX = lengthdir_x(spd, my_dir);
//						moveY = lengthdir_y(spd, my_dir);
//						counter = 0;
//				break;
//			}
//	}
///*
//if(collision_circle(x, y, 64, obj_Player, false, false))
//	{
//		state = states.alert;
//	}
//*/	
////Sprite
////sprite_index = spr_enemy_idle;
//image_xscale = sign(moveX);