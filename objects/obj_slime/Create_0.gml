/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

shadow_var = 16;
start_yoffset = sprite_yoffset + 16;
image_speed = 1;

hp = 3;

states_array[sIdle]		= scr_E_idleState;
states_array[sMove]		= scr_E_wanderState;
states_array[sChase]	= scr_E_chaseState;
states_array[sStun]		= scr_E_stunState;

while(place_meeting(x, y, obj_lifeFormParent))
	{
		x = random(room_width);
		y = random(room_height);
	}

state = sAlert	;//scr_enemy_idleState;

counter = 0;
spd = 2;
dir = irandom_range(0, 359);;
//alarm[0] = room_speed * irandom_range(1, 3);    //grants enemy stop and go wandering
sight = 9999;    //enemy sight range

targetx = 0;    //enemy target x position
targety = 0;    //enemy target y position

moveX = lengthdir_x(spd, dir);
moveY = lengthdir_y(spd, dir);