///void Awake

event_inherited();  //allows the object to inherit the create event of the parent

//Instance Variables
//act as public variables

///Set fixed rotation

creator = noone;
tag = "player";
//hp = 20;
spd = 1.5;
hspd = 0;
vspd = 0;
len = 0;    //length
xaxis = 0;
yaxis = 0;
dir = 0;
facing = DOWN; //Remove this once we incorporate actual character sprites
movement = MOVE;
attacked = false;   //melee_attacked = false;
//weapon_sprite = spr_maid_side_gun;
character = ANNA;
weapons = 1;
image_speed = .25;
//passive_items = 0;
//passive_items[0] = noone;
ability = ABILITY;
ultimate = noone;
spd_buff = spd+1;
currency = 0;

//right_key = keyboard_check(vk_right) || keyboard_check(ord('D'));
//left_key = keyboard_check(vk_left) || keyboard_check(ord('A'));
//up_key = keyboard_check(vk_up) || keyboard_check(ord('W'));
//down_key = keyboard_check(vk_down) || keyboard_check(ord('S'));

//state machine
target_state = scr_keyTargeting_state1;
state = scr_moveState1;


//get character's information
scr_characterData(character);
scr_weaponArray1(character);


//prototyping target creation, not sure about any other options
myTarget = instance_create_depth(x, y, depth, obj_target1);
myTarget.creator = id;
myGun = instance_create_depth(x - 5, y + 11, depth, obj_tempGun1);
myGun.creator = id;
myStats = instance_create_depth(x, y, depth, obj_playerStats1);
myStats.creator = id;
myStats.maxHp = hp;


//gun variables
currentClip = weaponArray[myGun.weapon, 8];
clipReload = weaponArray[myGun.weapon, 9];
ammoMax = weaponArray[myGun.weapon, 10];
fireRate = weaponArray[myGun.weapon, 3];
currentAmmo = ammoMax;


#region Shader Details
uni_time = shader_get_uniform(shd_wave, "time");
var_time_var = 2;
uni_resolution = shader_get_uniform(shd_wave, "resolution");
var_resolution_x = camera_get_view_width(0);
var_resolution_y = camera_get_view_height(0);
uni_wave_amount = shader_get_uniform(shd_wave, "wave_amount");
var_wave_amount = 50; //higher = more waves
uni_wave_distortion = shader_get_uniform(shd_wave, "wave_distortion");
var_wave_distortion = 500;
uni_wave_speed = shader_get_uniform(shd_wave, "wave_speed");
var_wave_speed = 5.0; //higher = faster
shader_enabled = false;
#endregion