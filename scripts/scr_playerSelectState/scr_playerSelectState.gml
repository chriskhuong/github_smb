/// @description scr_playerSelectState()

#region Behavior

myState = "PlayerSelect";
var unchosen = .25;
var chosen = 1;

facing = DOWN;
myTargetX = x + 40;
myTargetY = y;

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

if (creator.attack_key && obj_lobby.can_do && !confirmed)
	{
		//scr_characterData(character);
		//scr_weaponArray1(character);
		confirmed = true;
		myCounter = instance_create_depth(x, y, depth, obj_counter);
		image_speed = chosen;
		//myStats.maxHp = hp;
		//myStats.hp = myStats.maxHp;
	}

if (creator.cancel && confirmed)
	{
		if(instance_exists(myCounter))
					{
						with(myCounter)
							{
								instance_destroy();
							}
					}
		image_speed = unchosen;
	}

if (obj_lobby.ready && creator.pause_key)
	{
		//******NOTE********
		//modify with a global or something to determine which game mode we're playing
		audio_stop_sound(snd_Epic_Battle);
		room_goto(rm_SurvivalMode);
	}

#region making a counter to inform the lobby they're ready

if (creator.cancel && confirmed)
	{
		confirmed = false;
		if (instance_exists(myCounter))
			{
				with(myCounter)
					{
						instance_destroy();
					}
			}
		image_speed = unchosen;
	}
	
#endregion

#endregion

#region Transition Triggers

if (room != New_Testing_Room)
		{
			state = sMove;
		}

#endregion

#region Sprite

sprite_index = sprite[facing, movement];

#endregion