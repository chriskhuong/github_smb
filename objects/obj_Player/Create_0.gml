///void Awake

event_inherited();  //allows the object to inherit the create event of the parent
playerNumber = 0;
//FOR CHARACTER SELECT ONLY/////
confirmed = false;
myCounter = noone;
once = false;
alarm[11] = 1;
selected = false;
playerNum = 0;
creator = noone;

tag = "player";
alive = true;
hp = 0;
maxHp = hp;
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
shot = false;
attackSequence = 0;
character = 0;
weapon = 1;
weapons = 1;
image_speed = .25;
ability = ABILITY;
ultimate = noone;	//...yet
ultCharge = 0;
currency = 0;
reloading = false;
armL = -1;
armR = 1;
pickup = false;
deathNumber = 0;
deathCounter = 200;
maxDeathCounter = deathCounter;
revivalBump = 10;
revivalNum = 0;
invisible = false;
itemCollisionList = ds_list_create();

//get character's information
scr_characterData(character);
scr_weaponArray(character);
var_sprite_width = sprite_get_width(character * 2);
var_sprite_height = sprite_get_height(character * 2);

#region States

states_array[sJoin]				= scr_playerJoinState;
states_array[sSelect]			= scr_playerSelectState;
states_array[sCharacterSelect]	= scr_characterInfo;
states_array[sLoadOutInfo]		= scr_loadOutInfo;
states_array[sAbilityInfo]		= scr_abilityInfo;
//states_array[sSpawn]			= scr_spawnState;
states_array[sMove]				= scr_moveState;
states_array[sAttack]			= scr_attackState;
states_array[sUltimate]			= -1;
states_array[sStun]				= scr_hitStunState;
states_array[sDead]				= scr_deadState;
states_array[sGhost]			= scr_ghostState;
states_array[sRescue]			= scr_rescueState;
states_array[sReload]			= scr_reloadState;
states_array[sAbility]			= scr_abilityState;
states_array[sGameOver]			= scr_gameOver;

//state machine
target_state = scr_keyTargetingState;
state = sJoin;

#endregion

#region silhouette and shadow

silo = true;
shadow_var = 16;	//character "width"
start_yoffset = sprite_yoffset - 8;

#endregion

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
myTargetAlpha = 0;
myTargetAlphaMax = .5;

#endregion

#region gun variables

myGunX = x + weaponArray[weapon, 6];
myGunY = y + weaponArray[weapon, 7];
myGunDisplace = true;

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
myArmAlpha = 1;

myGunAudio = audio_emitter_create();
recoil = 0;
#endregion

#region palette stuff

current_pal = 0;
my_pal_sprite = spr_CLUT;
pal_swap_index_palette(my_pal_sprite);

#endregion

#region //determine if we are in single player debug mode and establish state accordingly

if(not is_undefined(global.debugPCMap[? "PCstate"]))
{
	state = global.debugPCMap[? "PCstate"];
}
if(not is_undefined(global.debugPCMap[? "PCcharacter"]))
{
	character = global.debugPCMap[? "PCcharacter"];
}
if(not is_undefined(global.debugPCMap[? "PCcreator"]))
{
	creator = global.debugPCMap[? "PCcreator"];
}
if(not is_undefined(global.debugPCMap[? "PCplayerNum"]))
{
	playerNum = global.debugPCMap[? "PCplayerNum"];
}
#endregion
