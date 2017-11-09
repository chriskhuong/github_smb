///scr_moveState()

//Getting Player Input
//scr_getInput();
attacked = false;
movement = MOVE;

if (creator.dash_key)   //remember to change this to whatever input you put special actions to
    {
        var xdir = lengthdir_x(8, facing*90)
        var ydir = lengthdir_y(8, facing*90)
        var speaker = instance_place(x + xdir, y + ydir, obj_speaker);
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
            
        else if (myStats.stamina >= 5)
            {
                //dash
                myStats.stamina -= 5;
                state = special[character, ability];  //sets the state to scr_dashState
                alarm[0] = timer[character, ability];    //sets how long the scr_dashState is active
                myStats.alarm[0] = room_speed;
            }
}

#region DEATH TESTING
/*
if (myStats.hp <= 0)
	{
		myStats.hp = 0;
		state = scr_ghostState1;
	}
*/
#endregion


if (creator.attack_key)
    {
        image_index = 0;
        state = scr_attackState;
        //alarm[2] = 5;  //after implementing actual animations remove this line and uncomment the code in the 'Animation End' event
    }

//////////////////GRENADES!!!!!///////////////////
//NOTE: refer to the //FIRING// section when adding more details such as timing between grenade tosses

if (creator.grenade_key && weaponArray[1, 15] > 0)
    {
        image_index = 0;
        weaponArray[1, 15] -= 1;
        script_execute(scr_grenade);
        show_debug_message("GRENADE!!!!!"); //temp
    }
	
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
  
/////////////////FIRING/////////////////
/* wtf wtf wtf wtf wtf */

var fireRate = weaponArray[myGun.weapon, 3];
//var currentClip = weaponArray[obj_tempGun.weapon, 8]; 11
var clipReload = weaponArray[myGun.weapon, 9];
var ammoMax = weaponArray[myGun.weapon, 10];
//var currentAmmo = weaponArray[obj_tempGun.weapon, 10]; 12;

//general shooting
if(creator.fire_key && myStats.can_shoot == true && weaponArray[myGun.weapon, 11] > 0)
    {
        script_execute(weaponArray[myGun.weapon, 4]);
        myStats.alarm[1] = fireRate;
        myStats.can_shoot = false;
        weaponArray[myGun.weapon, 11] -= 1;
        show_debug_message(string(weaponArray[myGun.weapon, 11]) +  " " + 
        string(clipReload) +  " " +
        string(weaponArray[myGun.weapon, 12]));
    }
    
//SIZE OF CLIP
var clipSize = weaponArray[myGun.weapon, 8];
    
if (creator.reload && weaponArray[myGun.weapon, 11] != clipSize)
    {
        if (weaponArray[myGun.weapon, 12] > 0)
            {
                weaponArray[myGun.weapon, 12] -= clipReload - weaponArray[myGun.weapon, 11];
                weaponArray[myGun.weapon, 11] += clipReload - weaponArray[myGun.weapon, 11];
            }
        else
            {
                weaponArray[myGun.weapon, 11] += 0;
            }
    }
else if(creator.reload && weaponArray[myGun.weapon, 11] == clipSize)
    {
        show_debug_message(string(weaponArray[myGun.weapon, 11]) + " " + string(clipReload));
    }

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
        len = spd;
    }

//Get the h and v speed

//this fixes the speed of any  movement
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
collision_zoneX = !place_free(x + hspd, y);
collision_zoneY = !place_free(x, y + vspd);

//Move
x += hspd;
y += vspd;

//Control the sprite

image_speed = room_speed/60;
    
//Horizontal sprite control

if (hspd > 0)
    {
        if (facing == LEFT)
            {
                image_speed = -1;
            }
		else
			{
				image_speed = 1;
			}
        //right sprite movement animation
        //sprite_index = spr_testChar;    //remove this when implementing actual sprite_work
        image_xscale = -1;
        //facing = "right";
		
		if (collision_zoneX)
			{
				move_contact_solid(-dir, hspd);
			}
    }
else if (hspd < 0)
    {
        if (facing == RIGHT)
            {
                image_speed = -1;
            }
		else
			{
				image_speed = 1;
			}
        //left sprite movement animation
        //sprite_index = spr_testChar;    //remove this when implementing actual sprite_work
        image_xscale = 1;
        //facing = "left";
		
		if (collision_zoneX)
			{
				move_contact_solid(-dir, -hspd);
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
			
		if (collision_zoneY)
			{
				move_contact_solid(-dir, vspd);
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
			
		if (collision_zoneY)
			{
				move_contact_solid(-dir, -vspd);
			}
    }
    
///////////TEMPORARY STUFF???/////////////////
/*
if (creator.switch_char_up)
    {
        if (character < 4)
            {
                character++;
            }
        else
            {
                character = 0;
            }
        scr_weaponArray1(character);
    }
else if (creator.switch_char_down)
    {
        if (character > 0)
            {
                character--;
            }
        else
            {
                character = 4;
            }
        scr_weaponArray1(character);
    }
*/
if (creator.switch_weapon)
    {
        with(myGun)
            {
                if (weapon < creator.weapons)
                    {
                        weapon++;
                    }
                else
                    {
                        weapon = 0;
                    }
            }
    }
