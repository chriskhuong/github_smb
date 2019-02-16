/// @description scr_moveState()

#region Behavior

myState = "Move";
attacked = false;
movement = MOVE;
myGunIndex = 0;
myGunAlpha = 1;
myArmAlpha = myGunAlpha;
recoil = max(0, recoil - 1);	//returns the larger number into recoil

var bbox_side;
var l = layer_get_id("Collision");
tilemap = layer_tilemap_get_id(l);

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

if (place_free(hspd, vspd))
	{
		//Move
		x = hspd;
		y = vspd;
	}

else
	{
		var sweepInterval = 1;
		
		for (var angle = sweepInterval; angle <= 80; angle += sweepInterval)
			{
				for (var multiplier = -1; multiplier <= 1; multiplier += 2)
					{
						var angleToCheck = dir + angle * multiplier;
						hspd = x + lengthdir_x(len, angleToCheck);
						vspd = y + lengthdir_y(len, angleToCheck);
						if (place_free(hspd, vspd))
							{
								x = hspd;
								y = vspd;
								exit;
							}
					}
			}
	}
/*
if (lengthdir_x(len, dir) > 0)
	{
		bbox_side = bbox_right;
	}
else
	{
		bbox_side = bbox_left;
	}
	
if (tilemap_get_at_pixel(tilemap, bbox_side + lengthdir_x(len, dir), bbox_top) != 0 || tilemap_get_at_pixel(tilemap, bbox_side + lengthdir_x(len, dir), bbox_bottom) != 0)
	{
		if (lengthdir_x(len, dir) > 0)
			{
				x = x - (x mod 32) + 31 - (bbox_right - x - 2);
			}
		else
			{
				x = x - (x mod 32) - (bbox_left - x - 2);
			}
		hspd = x;
	}

if (lengthdir_y(len, dir) > 0)
	{
		bbox_side = bbox_bottom;
	}
else
	{
		bbox_side = bbox_top;
	}
	
if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + lengthdir_y(len, dir)) != 0 || tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + lengthdir_y(len, dir)) != 0)
	{
		if (lengthdir_y(len, dir) > 0)
			{
				y = y - (y mod 32) + 31 - (bbox_bottom - y - 2);
			}
		else
			{
				y = y - (y mod 32) - (bbox_top - y - 2);
			}
		vspd = y;
	}
	

/*
if (lengthdir_y(len, dir) > 0)	//downward
	{
		var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
		var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
		
		if (t1 != 0 || t2 != 0)
			{
				y = ((bbox_bottom & ~31) - 1) - sprite_bbox_bottom;
			}
	}
if (lengthdir_y(len, dir) < 0)	//downward
	{
		var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
		var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
		
		if (t1 != 0 || t2 != 0)
			{
				y = ((bbox_top + 32) & ~31) - sprite_bbox_top;
			}
	}

if (lengthdir_x(len, dir) > 0)	//right
	{
		var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
		var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
		
		if (t1 != 0 || t2 != 0)
			{
				x = ((bbox_right & ~31) - 1) - sprite_bbox_right;
			}
	}
if (lengthdir_x(len, dir) < 0)	//right
	{
		var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
		var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
		
		if (t1 != 0 || t2 != 0)
			{
				x = ((bbox_left + 32) & ~31) - sprite_bbox_left;
			}
	}
*/
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
                with (dead)
                    {
                        if (!alive)
                            {

										alive = true;
										silo = true;
										myStats.hp = myStats.maxHp;
										state = sMove;
										with (deadBody)
											{
												alarm[0] = 60;
												alarm[1] = 30;
											}
                            }
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
