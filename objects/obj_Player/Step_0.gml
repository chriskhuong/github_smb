///Player Controls

#region timeadjustment for movement

secondsPassed = delta_time/1000000;
trueSpd = spd * secondsPassed;

#endregion

#region Pallet swap control /*NOTE - MODIFY THIS SO EACH IDIVIDUAL PLAYER CAN CONTROL THIS*/
/*
if (room == rm_characterSelect)
	{
		if(creator.grenade_key)
		    {
				current_pal++;
			}
		if(creator.ult_key)
		    {
				current_pal--;
			}
			
		current_pal=scr_wrap(current_pal,0,(pal_swap_get_pal_count(my_pal_sprite) - 1));
		
		myColor = pal_swap_get_pal_color(my_pal_sprite, current_pal, 1);
	}
*/
#endregion

depth = -y - 26;
scr_characterData(character);
scr_gunControl();
//script_execute(state);
#region sebastian arms
if(character == SEBASTIAN)
	{
		//scr_IK(-1, 13, 10, (myGunX - weaponArray[weapon, 19]) + lengthdir_x(myGunLenX, myGunAngle) - lengthdir_y(myGunLenY, myGunAngle), (myGunY - weaponArray[weapon, 20]) + lengthdir_y(myGunLenX, myGunAngle) + lengthdir_x(myGunLenY, myGunAngle));
		scr_IK(-1, 13, 10, weaponArray[weapon, 6] + (lengthdir_x(myGunLenX, myGunAngle) - lengthdir_y(myGunLenY, myGunAngle)), weaponArray[weapon, 7] + (lengthdir_y(myGunLenX, myGunAngle) + lengthdir_x(myGunLenY, myGunAngle)));
		scr_IK(1, 13, 10, weaponArray[weapon, 6] + (lengthdir_x(myGunLenX, myGunAngle) - lengthdir_y(myGunLenY, myGunAngle)), weaponArray[weapon, 7] + (lengthdir_y(myGunLenX, myGunAngle) + lengthdir_x(myGunLenY, myGunAngle)));
	}
#endregion
script_execute(states_array[state])
script_execute(target_state);

/*
sprite_index = sprite[facing, movement];