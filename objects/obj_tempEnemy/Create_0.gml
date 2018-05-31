///Initialize the slime
event_inherited();  //allows the object to inherit the create event of the parent

shadow_var = 16;

start_yoffset = sprite_yoffset + 16;

image_speed = 1;

up = spr_slime_run_up;
side = spr_slime_run_left;

hp = 3;
/*
while(place_meeting(x, y, obj_lifeFormParent))
	{
		x = random(room_width);
		y = random(room_height);
	}
*/
dir = 0;
spd = 2;
state = scr_checkForPlayer;//scr_enemy_idleState;
alarm[0] = room_speed * irandom_range(1, 3);    //grants enemy stop and go wandering
sight = 9999;    //enemy sight range
targetx = 0;    //enemy target x position
targety = 0;    //enemy target y position

