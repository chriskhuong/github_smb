///Player Controls

//event_inherited();  //allows the object to inherit the create event of the parent
if (room == New_Testing_Room)
	{
		if(keyboard_check_pressed(vk_up))
		    {
				current_pal++;
			}
		if(keyboard_check_pressed(vk_down))
		    {
				current_pal--;
			}
			
		current_pal=wrap(current_pal,0,pal_swap_get_pal_count(my_pal_sprite)-1);
	}
//image_speed=.1 * delta_time * (60/1000000);



depth = -y - 26;
scr_characterData(character);
//scr_weaponArray(character);

/*
if (confirmed && once == false)
	{
		gunName = weaponArray[myGun.weapon, 0];
		gunSpriteHorz = weaponArray[myGun.weapon, 1];
		gunSpriteVert = weaponArray[myGun.weapon, 2];
		fireRate = weaponArray[myGun.weapon, 3];
		gunScript = weaponArray[myGun.weapon, 4];
		bulletOffset = weaponArray[myGun.weapon, 5];
		gunXOffset = weaponArray[myGun.weapon, 6];
		gunYOffset = weaponArray[myGun.weapon, 7];
		clipAmmo = weaponArray[myGun.weapon, 8];
		reload = weaponArray[myGun.weapon, 9];
		maxAmmo = weaponArray[myGun.weapon, 10];
		clipTake = weaponArray[myGun.weapon, 11];
		maxTake = weaponArray[myGun.weapon, 12];
		gunLenX = weaponArray[myGun.weapon, 13];
		gunLenY = weaponArray[myGun.weapon, 14];
		//currentClip = weaponArray[myGun.weapon, 8];
		//clipReload = weaponArray[myGun.weapon, 9];
		//ammoMax = weaponArray[myGun.weapon, 10];
		//fireRate = weaponArray[myGun.weapon, 3];
		//currentAmmo = ammoMax;
		once = true;
	}
*/

script_execute(state);
script_execute(target_state);

sprite_index = sprite[facing, movement];

/*

if (!persistent)
	{
		for (i = 0; i < ds_list_size(children); i++)
			{
				children[i] = !persistent;
			}
	}

*/
