///Player Controls

//event_inherited();  //allows the object to inherit the create event of the parent
#region Pallet swap control /*NOTE - MODIFY THIS SO EACH IDIVIDUAL PLAYER CAN CONTROL THIS*/
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
#endregion

depth = -y - 26;
scr_characterData(character);

scr_gunControl();

script_execute(state);
script_execute(target_state);

sprite_index = sprite[facing, movement];