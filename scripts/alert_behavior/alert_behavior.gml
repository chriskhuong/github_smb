///@description alert_behavior()

//Behavior
my_dir = point_direction(x, y, obj_tempPlayer2.x, obj_tempPlayer2.y);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);
x += moveX;
y += moveY;

//Transition Triggers
if(!collision_circle(x, y, 64, obj_tempPlayer2, false, false))
	{
		state = states.idle;
	}

if(collision_circle(x, y, 32, obj_tempPlayer2, false, false))
	{
		state = states.attack;
	}
	
//Sprite
//sprite_index = spr_enemy_idle;
image_xscale = sign(moveX);