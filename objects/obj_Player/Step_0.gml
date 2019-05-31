///Player Controls

#region timeadjustment for movement

secondsPassed = delta_time/1000000;
trueSpd = spd * secondsPassed;

#endregion

#region Pallet swap control /*NOTE - MODIFY THIS SO EACH IDIVIDUAL PLAYER CAN CONTROL THIS*/

if (room == rm_characterSelect)
	{
		if(creator.active_items_key || creator.right_key)
		    {
				current_pal++;
			}
		if(creator.switch_weapon || creator.left_key)
		    {
				current_pal--;
			}
			
		current_pal=scr_wrap(current_pal,0,(pal_swap_get_pal_count(my_pal_sprite) - 1));
		
		myColor = pal_swap_get_pal_color(my_pal_sprite, current_pal, 1);
	}

#endregion

depth = -y - 26;
//scr_characterData(character); //I don't think there's a need to update this every frame. Doesn't make sense
//show_debug_message(string(scr_tile_place_meeting(x, y, "Tile_Collision")));

script_execute(states_array[state])
script_execute(target_state);
//show_debug_message(string(ultCharge))
/*
if(creator.dash_key && room == rm_SurvivalMode && hp != 0)
	{
		hp = 0;
	}
*/
if(hp <= 0 && alive == true)
	{
		image_speed = 1;
		image_index = 0;
		state = sDead;
		alive = false;
	}
	
if(alive == true)
	{
		revivalNum = 0;
	}

//pickup = false;