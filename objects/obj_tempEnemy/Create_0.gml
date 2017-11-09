///Initialize the slime
event_inherited();  //allows the object to inherit the create event of the parent

shadow_var = 16;

hp = 3;

while(place_meeting(x, y, obj_lifeFormParent))
	{
		x = random(room_width);
		y = random(room_height);
	}

image_speed = .1;
spd = 2;
state = scr_checkForPlayer;//scr_enemy_idleState;
alarm[0] = room_speed * irandom_range(2, 5);    //grants enemy stop and go wandering
sight = 9999;    //enemy sight range
targetx = 0;    //enemy target x position
targety = 0;    //enemy target y position

