/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

character = SLIME;
movement = IDLE;

scr_enemyData(character);

shadow_var = 16;
start_yoffset = sprite_yoffset + 16;
image_speed = 1;

hp = 3;

draw = false;

states_array[sIdle]		= scr_E_idleState;
states_array[sMove]		= scr_E_wanderSteerFlockState;
states_array[sChase]	= scr_E_pathSteerChaseState;
//states_array[sChase]	= scr_E_pathChaseState;
//states_array[sChase]	= scr_E_chaseState;
states_array[sStun]		= scr_E_stunSteerState;

state = sIdle;//scr_enemy_idleState;

counter = 0;
spd = 1.25;
dir = irandom_range(0, 359);
//alarm[0] = room_speed * irandom_range(1, 3);    //grants enemy stop and go wandering
sight = 9999;    //enemy sight range

myState = "";

position = vect2(x, y);
velocity = vect2(0, 0);
steering = vect2(0, 0);

max_speed = spd;
max_force = 1;

//path finding stuff
path = path_add();
my_path_point = 0; //irandom(path_get_number(my_path) - 1)
my_path_dir = 1;

//flocking stuff
grid_controller = obj_flock_grid_ds;
cellSize = grid_controller.cellSize;

timer = room_speed / 3;	//pathfinding update
maxTimer = timer;