///void Awake

event_inherited();  //allows the object to inherit the create event of the parent


//Instance Variables
//act as public variables

///Set fixed rotation


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
character = JO;
weapons = 1;
image_speed = .25;
passive_items = 0;
passive_items[0] = noone;
active_items[0] = noone;
ability = ABILITY;
global.active_slot = 0;
spd_buff = spd+1;
//right_key = keyboard_check(vk_right) || keyboard_check(ord('D'));
//left_key = keyboard_check(vk_left) || keyboard_check(ord('A'));
//up_key = keyboard_check(vk_up) || keyboard_check(ord('W'));
//down_key = keyboard_check(vk_down) || keyboard_check(ord('S'));

//prototyping target creation, not sure about any other options
var target = instance_create(x, y, obj_target);
target.creator = id;
var gun = instance_create(x - 5, y + 11, obj_tempGun);
gun.creator = id;

//state machine
target_state = scr_keyTargeting_state;
state = scr_moveState;


//get character's information
scr_characterData(character);
scr_weaponArray(character);


//gun variables
currentClip = obj_tempPlayer.weaponArray[obj_tempGun.weapon, 8];
clipReload = obj_tempPlayer.weaponArray[obj_tempGun.weapon, 9];
ammoMax = obj_tempPlayer.weaponArray[obj_tempGun.weapon, 10];
fireRate = obj_tempPlayer.weaponArray[obj_tempGun.weapon, 3];
currentAmmo = ammoMax;


