///scr_moveState2()

//Getting Player Input
//scr_getInput();
attacked = false;
movement = MOVE;

#region Special Button
if (creator.dash_key)   //remember to change this to whatever input you put special actions to
    {
        var xdir = lengthdir_x(8, facing*90)
        var ydir = lengthdir_y(8, facing*90)
        var speaker = instance_place(x + xdir, y + ydir, obj_speaker);
		
		#region chat and other events
        if (speaker != noone)
            {
                //talk to it
                with (speaker)    //everything here is inside of the sign
                    {
                        if (!instance_exists(dialog))   //if the dialog variable doesn't hold a dialog object
                            {
                                dialog = instance_create_depth(x + xOffset, y + yOffset, depth, obj_dialog); //then we create a dialog object
                                dialog.text = text; //sets the dialog's text. the speaker is telling the dialog box what to say
                            }
                        else    //if it does exist
                            {
                                dialog.text_page++; //just go to the next page
                                dialog.text_count = 0; //resets the dialog index back to zero when we go to the next page of dialog
                                if (dialog.text_page > array_length_1d(dialog.text) - 1)//makes sure the dialog can't go past our max number of pages
                                    {
                                        with(dialog) //if we go past the array length of the dialog, then we need to destroy that particular dialog
                                            {
                                                instance_destroy();
                                            }
                                    }
                            }
                    }
            }
            #endregion
		
        else if (myStats.stamina >= 5)
            {
                //dash
                myStats.stamina -= 5;
                state = special[character, ability];  //sets the state to scr_dashState
                alarm[0] = timer[character, ability];    //sets how long the scr_dashState is active
                myStats.alarm[0] = room_speed;
            }
}

#endregion


#region Melee
if (creator.attack_key)
    {
		state = scr_attackState;
		image_index = 0;
		
		var xdir = lengthdir_x(8, facing*90)
        var ydir = lengthdir_y(8, facing*90)
        var dead = instance_place(x + xdir, y + ydir, obj_tempPlayer2);
		#region interaction with dead body
        if (dead != noone)
            {
                with (dead)
                    {
                        if (!alive)
                            {

										alive = true;
										state = scr_moveState2;
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

#region Grenades
//NOTE: refer to the //FIRING// section when adding more details such as timing between grenade tosses

if (creator.grenade_key && weaponArray[1, 15] > 0)
    {
        image_index = 0;
        weaponArray[1, 15] -= 1;
        script_execute(scr_grenade);
        show_debug_message("GRENADE!!!!!"); //temp
    }
#endregion

#region Item stuff
//show_debug_message(string(obj_tempPlayer.passive_items[0]));

if (creator.active_items_key && weaponArray[0,14] != noone)
    {
        /*image_index = 0;
		//script_execute(scr_smokeGrenade);
		switch (active_items[0])
		{
		    case obj_active_smokeGrenade: 
			script_execute(scr_smokeGrenade());
			break;
			case obj_active_Rpotion:
			obj_playerStats.hp += 1;
			show_debug_message(active_items[0]);
			break;
		    default: 
			break;
		}
		obj_tempPlayer.active_items[0] = noone;
		*/
		script_execute(scr_revertEnhancements);
		script_execute(weaponArray[0, 15]);
		weaponArray[0,14] = noone;
    }
#endregion

#region Firing
/* wtf wtf wtf wtf wtf */

var fireRate = weaponArray[weapon, 3];
//var currentClip = weaponArray[obj_tempGun.weapon, 8]; 11
var clipReload = weaponArray[weapon, 9];
var ammoMax = weaponArray[weapon, 10];
//var currentAmmo = weaponArray[obj_tempGun.weapon, 10]; 12;

//general shooting
if(creator.fire_key && myStats.can_shoot == true && weaponArray[weapon, 11] > 0)
    {
        script_execute(weaponArray[weapon, 4]);
        myStats.alarm[1] = fireRate;
        myStats.can_shoot = false;
        weaponArray[weapon, 11] -= 1;
        show_debug_message(string(weaponArray[weapon, 11]) +  " " + 
        string(clipReload) +  " " +
        string(weaponArray[weapon, 12]));
    }
    
//SIZE OF CLIP
var clipSize = weaponArray[weapon, 8];
    
if (creator.reload && weaponArray[weapon, 11] != clipSize)
    {
        if (weaponArray[weapon, 12] > 0)
            {
                weaponArray[weapon, 12] -= clipReload - weaponArray[weapon, 11];
                weaponArray[weapon, 11] += clipReload - weaponArray[weapon, 11];
            }
        else
            {
                weaponArray[weapon, 11] += 0;
            }
    }
else if(creator.reload && weaponArray[weapon, 11] == clipSize)
    {
        show_debug_message(string(weaponArray[weapon, 11]) + " " + string(clipReload));
    }
#endregion

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
        //scr_getFace(); //took this out because is was overriding the player targeting direction
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
		var sweepInterval = 10;
		
		for (var angle = sweepInterval; angle <= 90; angle += sweepInterval)
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

//Control the sprite

image_speed = room_speed/60;
    
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
        //right sprite movement animation
        //sprite_index = spr_testChar;    //remove this when implementing actual sprite_work
        //image_xscale = -1;
        //facing = "right";

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
        //left sprite movement animation
        //sprite_index = spr_testChar;    //remove this when implementing actual sprite_work
        //image_xscale = 1;
        //facing = "left";
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

