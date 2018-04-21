///void Awake

event_inherited();  //allows the object to inherit the create event of the parent
//Instance Variables
//act as public variables
//FOR CHARACTER SELECT ONLY/////
confirmed = false;
myCounter = noone;
once = false;
alarm[11] = 1;
////////////////////////////////
selected = false;
alive = true;
playerNum = 0;
shadow_var = 16;
creator = noone;
tag = "player";
spd = 150;
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
character = 0;
weapon = 0;
weapons = 1;
image_speed = .25;
ability = ABILITY;
ultimate = noone;	//...yet
spd_buff = spd+1;
currency = 0;
silo = true;
reloading = false;

//get character's information
scr_characterData(character);
scr_weaponArray1(character);
var_sprite_width = sprite_get_width(character * 2);
var_sprite_height = sprite_get_height(character * 2);

states_array[sJoin]		= scr_playerJoinState;
states_array[sSelect]	= scr_playerSelectState;
states_array[sCharacterSelect]	= scr_characterInfo;
states_array[sLoadOutInfo]	= scr_loadOutInfo;
states_array[sAbilityInfo]	= scr_abilityInfo;
states_array[sMove]		= scr_moveState;
states_array[sAttack]	= scr_attackState;
states_array[sUltimate]	= -1;
states_array[sStun]		= scr_hitStunState;
states_array[sDead]		= -1;
states_array[sGhost]	= scr_ghostState;
states_array[sReload]	= scr_reloadState;
						//special[character, ability];
states_array[sAbility]	= scr_abilityState;

//state machine
target_state = scr_keyTargeting_state2;
state = sJoin;

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
myGunFinal = sprite_get_number(weaponArray[weapon, 18]);
myGunSpeed = room_speed/10;
myGunAlpha = 1;

#endregion

#region palette stuff

current_pal = 0;
my_pal_sprite = spr_CLUT;
pal_swap_index_palette(my_pal_sprite);

#endregion