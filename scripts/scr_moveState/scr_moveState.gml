///scr_moveState()

//Getting Player Input
//scr_getInput();
attacked = false;
movement = MOVE;

if (obj_input.dash_key)   //remember to change this to whatever input you put special actions to
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
                                dialog = instance_create(x + xOffset, y + yOffset, obj_dialog); //then we create a dialog object
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
            
        else if (obj_playerStats.stamina >= 5)
            {
                //dash
                obj_playerStats.stamina -= 5;
                state = special[character, ability];  //sets the state to scr_dashState
                alarm[0] = timer[character, ability];    //sets how long the scr_dashState is active
                obj_playerStats.alarm[0] = room_speed;
            }
}


if (obj_input.attack_key)
    {
        image_index = 0;
        state = scr_attackState;
        alarm[2] = 5;  //after implementing actual animations remove this line and uncomment the code in the 'Animation End' event
    }

//////////////////GRENADES!!!!!///////////////////
//NOTE: refer to the //FIRING// section when adding more details such as timing between grenade tosses

if (obj_input.grenade_key && weaponArray[1, 13] > 0)
    {
        image_index = 0;
        weaponArray[1, 13] -= 1;
        script_execute(scr_grenade);
        show_debug_message("GRENADE!!!!!"); //temp
    }
	
//show_debug_message(string(obj_tempPlayer.active_items[0]));

if (obj_input.active_items_key && obj_tempPlayer.active_items[0] != noone)
    {
        image_index = 0;
		var p = instance_create_depth(x - 50, y - 50, depth, obj_tempPlayer.active_items[0]);
		obj_tempPlayer.active_items[0] = noone;
		p.creator = id;
    }
        
/////////////////FIRING/////////////////
/* wtf wtf wtf wtf wtf */

var fireRate = weaponArray[obj_tempGun.weapon, 3];
//var currentClip = weaponArray[obj_tempGun.weapon, 8]; 11
var clipReload = weaponArray[obj_tempGun.weapon, 9];
var ammoMax = weaponArray[obj_tempGun.weapon, 10];
//var currentAmmo = weaponArray[obj_tempGun.weapon, 10]; 12;

//general shooting
if(obj_input.fire_key && obj_playerStats.can_shoot == true && weaponArray[obj_tempGun.weapon, 11] > 0)
    {
        script_execute(weaponArray[obj_tempGun.weapon, 4]);
        obj_playerStats.alarm[1] = fireRate;
        obj_playerStats.can_shoot = false;
        weaponArray[obj_tempGun.weapon, 11] -= 1;
        show_debug_message(string(weaponArray[obj_tempGun.weapon, 11]) +  " " + 
        string(clipReload) +  " " +
        string(weaponArray[obj_tempGun.weapon, 12]));
    }
    
//SIZE OF CLIP
var clipSize = weaponArray[obj_tempGun.weapon, 8];
    
if (obj_input.reload && weaponArray[obj_tempGun.weapon, 11] != clipSize)
    {
        if (weaponArray[obj_tempGun.weapon, 12] > 0)
            {
                weaponArray[obj_tempGun.weapon, 12] -= clipReload - weaponArray[obj_tempGun.weapon, 11];
                weaponArray[obj_tempGun.weapon, 11] += clipReload - weaponArray[obj_tempGun.weapon, 11];
            }
        else
            {
                weaponArray[obj_tempGun.weapon, 11] += 0;
            }
    }
else if(obj_input.reload && weaponArray[obj_tempGun.weapon, 11] == clipSize)
    {
        show_debug_message(string(weaponArray[obj_tempGun.weapon, 11]) + " " + string(clipReload));
    }

//Get direction
dir = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis);

//Get the length
if (obj_input.xaxis == 0 && obj_input.yaxis == 0)   //we're NOT moving
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

//Move
phy_position_x += hspd;
phy_position_y += vspd;

//Control the sprite
//image_speed = room_speed/60;

    
//Horizontal sprite control

if (hspd > 0)
    {
        if (facing == LEFT)
            {
                image_speed *= -1;
            }
        //right sprite movement animation
        //sprite_index = spr_testChar;    //remove this when implementing actual sprite_work
        image_xscale = -1;
        //facing = "right";
    }
else if (hspd < 0)
    {
        if (facing == RIGHT)
            {
                image_speed *= -1;
            }
        //left sprite movement animation
        //sprite_index = spr_testChar;    //remove this when implementing actual sprite_work
        image_xscale = 1;
        //facing = "left";
    }
if (vspd > 0)
    {
        if (facing == UP)
            {
                image_speed *= -1;
            }
    }
else if (vspd < 0)
    {
        if (facing == DOWN)
            {
                image_speed *= -1;
            }
    }
    
///////////TEMPORARY STUFF???/////////////////
if (obj_input.switch_char_up)
    {
        if (character < 4)
            {
                character++;
            }
        else
            {
                character = 0;
            }
        scr_weaponArray(character);
    }
else if (obj_input.switch_char_down)
    {
        if (character > 0)
            {
                character--;
            }
        else
            {
                character = 4;
            }
        scr_weaponArray(character);
    }
if (obj_input.switch_weapon)
    {
        with(obj_tempGun)
            {
                if (weapon < obj_tempPlayer.weapons)
                    {
                        weapon++;
                    }
                else
                    {
                        weapon = 0;
                    }
            }
    }
