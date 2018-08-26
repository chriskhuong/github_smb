///@description wander_behavior()

//Behavior
myState = "Wander";
counter += 1;
x += moveX;
y += moveY;

//Transition Triggers
if (counter >= room_speed * 3)
	{
		var change = choose(0, 1);
		switch(change)
			{
				case 0: state = sIdle;
				case 1: my_dir = irandom_range(0, 359);
						moveX = lengthdir_x(spd, my_dir);
						moveY = lengthdir_y(spd, my_dir);
						counter = 0;
				break;
			}
	}
/*
if(collision_circle(x, y, 64, obj_Player, false, false))
	{
		state = states.alert;
	}
*/	
//Sprite
//sprite_index = spr_enemy_idle;
image_xscale = sign(moveX);