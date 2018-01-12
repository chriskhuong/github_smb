///Player Controls

#region timeadjustment for movement

secondsPassed = delta_time/1000000;
trueSpd = spd * secondsPassed;

#endregion

//event_inherited();  //allows the object to inherit the create event of the parent
#region Pallet swap control /*NOTE - MODIFY THIS SO EACH IDIVIDUAL PLAYER CAN CONTROL THIS*/
if (room == New_Testing_Room)
	{
		if(creator.grenade_key)
		    {
				current_pal++;
			}
		if(creator.SOMETHING)
		    {
				current_pal--;
			}
		current_pal=wrap(current_pal,0,pal_swap_get_pal_count(my_pal_sprite)-1);
		
		myColor = pal_swap_get_pal_color(my_pal_sprite, current_pal, 17);
	}
#endregion

depth = -y - 26;
scr_characterData(character);
scr_gunControl();
script_execute(state);
script_execute(target_state);

sprite_index = sprite[facing, movement];