///void Awake

event_inherited();  //allows the object to inherit the create event of the parent
//myColor = noone;
//Instance Variables
//act as public variables

//FOR CHARACTER SELECT ONLY/////
confirmed = false;
myCounter = noone;
once = false;
alarm[11] = 1;
////////////////////////////////

alive = true;
playerNum = 0;
shadow_var = 16;
creator = noone;
tag = "player";
//hp = 20;
spd = 150;//2.0//1.5;
tarSpd = 2;
hspd = 0;
vspd = 0;
len = 0;    //length
xaxis = 0;
yaxis = 0;
dir = 0;
facing = DOWN; //Remove this once we incorporate actual character sprites
movement = MOVE;
attacked = false;   //melee_attacked = false;
attackSequence = 0;
//weapon_sprite = spr_maid_side_gun;
character = 0;
weapon = 0;
weapons = 1;
image_speed = .25;
//passive_items = 0;
//passive_items[0] = noone;
ability = ABILITY;
ultimate = noone;
spd_buff = spd+1;
currency = 0;
silo = true;
//right_key = keyboard_check(vk_right) || keyboard_check(ord('D'));
//left_key = keyboard_check(vk_left) || keyboard_check(ord('A'));
//up_key = keyboard_check(vk_up) || keyboard_check(ord('W'));
//down_key = keyboard_check(vk_down) || keyboard_check(ord('S'));

//state machine
target_state = scr_keyTargeting_state2;
state = scr_playerSelectState2;


//get character's information
scr_characterData(character);
scr_weaponArray1(character);
var_sprite_width = sprite_get_width(character * 2);
var_sprite_height = sprite_get_height(character * 2);

//prototyping target creation, not sure about any other options
/*
myTarget = instance_create_depth(x, y, depth, obj_target1);
myTarget.creator = id;
myGun = instance_create_depth(x - 5, y + 11, depth, obj_tempGun1);
myGun.creator = id;
*/

/*
myStats = instance_create_depth(x, y, depth, obj_playerStats2);
myStats.creator = id;
myStats.maxHp = hp;
myStats.num = playerNum;
*/
//MAKES THIS^^^^

#region hit/hurtbox
/*
hurtbox = scr_hurtboxCreate(30, 53, -15, -21);

//hitbox
hitbox = -1;
*/

hit = false;
hitStun = 0;
hitBy = -1;
knockback = 10;

#endregion

#region target

myTargetX = x;
myTargetY = y;
myTargetAlpha = 1;

#endregion

#region gun variables
/*
gunName = 0;
gunSpriteHorz = 0;
gunSpriteVert = 0;
gunRate = 0;
gunScript = 0;
bulletOffset = 0;
gunXOffset = 0;
gunYOffset = 0;
clipAmmo = 0;
reload = 0;
maxAmmo = 0;
gunLenX = 0;
gunLenY = 0;
//currentClip = weaponArray[myGun.weapon, 8];
//clipReload = weaponArray[myGun.weapon, 9];
//ammoMax = weaponArray[myGun.weapon, 10];
//fireRate = weaponArray[myGun.weapon, 3];
//currentAmmo = ammoMax;
*/

//myGunX = x - 5;
//myGunY = y + 11;

myGunX = x + weaponArray[weapon, 6];
myGunY = y + weaponArray[weapon, 7];

myGunXScale = 1;
myGunYScale = 1;

myGunSprite = weaponArray[weapon, 2];
myGunDir = point_direction(myGunX, myGunY, myTargetX, myTargetY);
myGunAngle = myGunDir;
myGunLenX = -weaponArray[weapon, 13];
myGunLenY = -weaponArray[weapon, 14];
gunOver = true;
myGunIndex = 0;

#endregion

#region palette stuff

current_pal = 0;
my_pal_sprite = spr_BritneyPAL;
pal_swap_index_palette(my_pal_sprite);

///Override stuff.
override_surface=noone;
override_pal_index=1;

#endregion

