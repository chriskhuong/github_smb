///Initialize the slime

event_inherited();  //allows the object to inherit the create event of the parent

start_yoffset = sprite_yoffset + 16;

image_speed = room_speed * 3;

up = spr_slimeHelmet_run_up;
side = spr_slimeHelmet_run_left;

while(place_meeting(x, y, obj_lifeFormParent))
	{
		x = random(room_width);
		y = random(room_height);
	}

shadow_var = 16;
hp = 9;
spd = 4;
state = scr_enemy_idleState;
alarm[0] = room_speed * irandom_range(2, 5);    //grants enemy stop and go wandering
sight = 9999;    //enemy sight range
xaxis = 0;    //points in a direction
yaxis = 0;

