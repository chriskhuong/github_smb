/// @description scr_moveState()

#region Behavior

myState = "Move";
attacked = false;
movement = MOVE;
myGunIndex = 0;
myGunAlpha = 1;
myArmAlpha = myGunAlpha;
recoil = max(0, recoil - 1);	//returns the larger number into recoil

#region Movement
//Get direction
dir = point_direction(0, 0, creator.xaxis, creator.yaxis);

//Get the length
if (creator.xaxis == 0 && creator.yaxis == 0)   //we're NOT moving
    {
        len = 0;
        movement = IDLE;
    }
    
else    //we're moving
    {
        len = trueSpd;
    }

//Get the h and v speed

//this fixes the speed of any  movement
hspd = x + lengthdir_x(len, dir);
vspd = y + lengthdir_y(len, dir);
collision_zoneX = !place_free(x + hspd, y);
collision_zoneY = !place_free(x, y + vspd);

//Collision check if free
scr_collision(hspd, vspd, "Tile_Collision");

#endregion

#region Firing

var fireRate = weaponArray[weapon, 3];
//var clipReload = weaponArray[weapon, 9];
//var ammoMax = weaponArray[weapon, 10];

//general shooting
if(creator.fire_key && myStats.can_shoot == true && weaponArray[weapon, 8] > 0)
    {
		recoil = 4;
		audio_emitter_pitch(myGunAudio, random_range(.9, 1));
		audio_emitter_gain(myGunAudio, random_range(.75, 1.25));
		audio_play_sound_on(myGunAudio, snd_gun, false, 1);
		p = instance_create_depth(myGunX + lengthdir_x(myGunLenX + 15, myGunAngle) - lengthdir_y(myGunLenY, myGunAngle), myGunY + lengthdir_y(myGunLenX + 15, myGunAngle) + lengthdir_x(myGunLenY, myGunAngle), depth-500, obj_muzzleFlare);
		p.image_angle = myGunAngle;
		p.creator = id;
		if (weaponArray[weapon, 4] == scr_shotgun)
			{
				p.image_index = 0;
			}
		else if (weaponArray[weapon, 4] == scr_sniper)
			{
				p.image_index = 2;
			}
		else if (weaponArray[weapon, 4] == scr_assault)
			{
				p.image_index = 3;
			}
		else
			{
				p.image_index = 1;
			}

        script_execute(weaponArray[weapon, 4]);
        myStats.alarm[1] = fireRate;
        myStats.can_shoot = false;
		weaponArray[weapon, 8] = scr_approach(weaponArray[weapon, 8], 0, 1);
    }
	
#endregion

#region Grenades
//NOTE: refer to the //FIRING// section when adding more details such as timing between grenade tosses

if (creator.grenade_key && weaponArray[1, 15] > 0)
    {
        image_index = 0;
        weaponArray[1, 15] -= 1;
        script_execute(scr_grenade);
    }
	
#endregion

#region Weapon Swap

if (creator.switch_weapon)
    {
		if (weapon < weapons)
			{
				weapon++;
			}
		else
			{
				weapon = 0;
			}
    }
#endregion

#endregion

#region Transition Triggers

#region Hit Stun

if(hit)
	{
		len = knockback;
		hit = false;
		state = sStun;
	}

#endregion

#region Reloading
	//Standard reload									//Auto reload when out of ammo								//use fire_press if desired to tap again
if((creator.reload && weaponArray[weapon, 10] && weaponArray[weapon, 10] > 0 && weaponArray[weapon,8] != weaponArray[weapon, 11]) || (weaponArray[weapon, 8] == 0 && weaponArray[weapon, 10] > 0 && creator.fire_key))
	{
		alarm[10] = myGunSpeed;
		state = sReload;
	}

#endregion

#region Special Button
if (creator.dash_key)   //remember to change this to whatever input you put special actions to
    {
        if (myStats.coolDown == false)
            {
                //dash
                state = sAbility;  //sets the state to their ability
                //myStats.alarm[0] = room_speed;
				
            }
}

#endregion

#region Melee

if (creator.attack_key)
    {
		state = sAttack;
		
		//Will probably scrap this VVV
		
		#region interaction with dead body
		
		var xdir = lengthdir_x(8, facing*90)
        var ydir = lengthdir_y(8, facing*90)
        var dead = instance_place(x + xdir, y + ydir, obj_Player);
		
        if (dead != noone)
            {
				/*
				with (dead)
					{
						if place_meeting
						position_meeting
					}*/
				if (dead.alive == false && dead.creator != id)
					{
						//dead.revivalNum += 1;
						state = sRescue;
						helping = dead;
						
						/*
						show_debug_message(string(helping.revivalNum) + "reviving instances");
						if (helping.revivalNum < 1)
							{
								x = helping.x;
								y = helping.y - 16;
							}
						if (helping.revivalNum == 1)
							{
								x = helping.x + 24;
								y = helping.y;
							}
						if (helping.revivalNum > 1)
							{
								x = helping.x - 24;
								y = helping.y;
							}
						*/
					}
			}
		#endregion
		
    }
	
#endregion

#endregion

#region Sprite

#region Facing

//Horizontal sprite control

if (hspd > 0)
    {
        if (facing == LEFT)
            {
				image_xscale = 1;
                image_speed = -1;
            }
		else
			{
				image_xscale = -1;
				image_speed = 1;
			}
    }
else if (hspd < 0)
    {
        if (facing == RIGHT)
            {
				image_xscale = -1;
                image_speed = -1;
            }
		else
			{
				image_xscale = 1;
				image_speed = 1;
			}
    }
else
	{
		if (facing == RIGHT)
			{
				image_xscale = -1;
			}
		else if (facing == LEFT)
			{
				image_xscale = 1;
			}
	}
if (vspd > 0)
    {
        if (facing == UP)
            {
                image_speed = -1;
            }
		else
			{
				image_speed = 1;
			}
    }
else if (vspd < 0)
    {
        if (facing == DOWN)
            {
                image_speed = -1;
            }
		else
			{
				image_speed = 1;
			}
    }
	
#endregion

sprite_index = sprite[facing, movement];

#endregion
