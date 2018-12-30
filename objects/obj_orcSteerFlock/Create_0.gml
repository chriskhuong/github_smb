/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

character = ORC;
movement = IDLE;
head = choose(1, 2, 3, 4);
weapons = 1;
weapon = 1;
recoil = 0;

scr_enemyData(character);
scr_weaponArray(character);

shadow_var = 16;
start_yoffset = sprite_yoffset + 32;
image_speed = 1;

hp = 3;

draw = false;

states_array[sIdle]		= scr_E_idleState;
states_array[sMove]		= scr_E_wanderSteerFlockState;
states_array[sChase]	= scr_E_pathSteerPositioningState;
//states_array[sChase]	= scr_E_pathChaseState;
//states_array[sChase]	= scr_E_chaseState;
states_array[sStun]		= scr_E_stunSteerState;

state = sChase;//scr_enemy_idleState;

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

#region gun variables
myGunX = x + weaponArray[weapon, 6];
myGunY = y + weaponArray[weapon, 7];

myGunXScale = 1;
myGunYScale = 1;
myGunSprite = weaponArray[1, 1];
myTargetX = position[1];
myTargetY = position[2];
myGunDir = point_direction(myGunX, myGunY, myTargetX, myTargetY);
myGunAngle = myGunDir;
myGunLenX = -weaponArray[1, 13];
myGunLenY = -weaponArray[1, 14];
myGunIndex = 0;
myGunSpeed = room_speed/10;
myGunAlpha = 1;
myArmAlpha = 1;
gunOver = true;
#endregion

myHeadXScale = image_xscale;
myHeadYScale = image_yscale;
myHeadAngle = myGunAngle;

//path finding stuff
path = path_add();
my_path_point = 0; //irandom(path_get_number(my_path) - 1)
my_path_dir = 1;

//flocking stuff
grid_controller = obj_flock_grid_ds;
cellSize = grid_controller.cellSize;

timer = room_speed / 3;	//pathfinding update
maxTimer = timer;
