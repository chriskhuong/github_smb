/// @description scr_playerSelectState()

#region Behavior

myState = "PlayerSelect";

#region character switching

if (confirmed == false)
	{
	
		if (creator.switch_char_up || creator.up_pressed)
		    {
		        if (character < 3)
		            {
		                character++;
		            }
		        else
		            {
		                character = 0;
		            }
		    }
		else if (creator.switch_char_down || creator.down_pressed)
		    {
		        if (character > 0)
		            {
		                character--;
		            }
		        else
		            {
		                character = 3;
		            }
		    }
		scr_characterData(character);
		scr_weaponArray1(character);
		myStats.maxHp = hp;
		myStats.hp = myStats.maxHp;
	}

#endregion

if (creator.attack_key  && !selected)
	{
		selected = true;
	}



#region making a counter to inform the lobby they're ready

	
#endregion

#endregion

#region Transition Triggers

if (selected)
		{
			selected = false;
			state = sCharacterSelect;
		}
if(creator.cancel && confirmed == false)
	{
		state = sJoin;
	}
#endregion

#region Sprite


//sprite_index = sprite[facing, movement];

#endregion