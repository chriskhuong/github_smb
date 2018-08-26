/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

tag = "boss"

shadow_var = 64;
start_yoffset = sprite_yoffset + 64;
image_speed = 1;

hp = 600;

states_array[sIdle]		= scr_E_idleState;
states_array[sMove]		= scr_E_wanderState;
//states_array[sChase]	= scr_E_pathSteerChaseState;
//states_array[sChase]	= scr_E_pathChaseState;
//states_array[sChase]	= scr_E_chaseState;
states_array[sStun]		= scr_E_stunState;

state = sIdle;//scr_enemy_idleState;

counter = 0;
spd = 1.25;
dir = irandom_range(0, 359);
timer = room_speed * irandom_range(1, 3);    //grants enemy stop and go wandering
sight = 9999;    //enemy sight range

myState = "";
/*
position = vect2(x, y);
velocity = vect2(0, 0);
steering = vect2(0, 0);
*/
my_dir = irandom_range(0, 359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);
max_speed = spd;
max_force = 1;

//path finding stuff
path = path_add();
my_path_point = 0; //irandom(path_get_number(my_path) - 1)
my_path_dir = 1;

box_R = bbox_right;
box_L = bbox_left;
my_width = box_R - box_L;

depth = y + 6;