///@description alert_behavior()

//Behavior
myState = "Chase";

my_dir = point_direction(x, y, obj_Player.x, obj_Player.y);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);
x += moveX;
y += moveY;

//Transition Triggers
if(!collision_circle(x, y, 64, obj_Player, false, false))
	{
		state = states.idle;
	}

if(collision_circle(x, y, 32, obj_Player, false, false))
	{
		state = states.attack;
	}
	
//Sprite
//sprite_index = spr_enemy_idle;
image_xscale = sign(moveX);