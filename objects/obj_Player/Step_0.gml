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

script_execute(states_array[state])
script_execute(target_state);
