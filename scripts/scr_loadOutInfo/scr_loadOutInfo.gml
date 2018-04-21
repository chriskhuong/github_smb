/// @description scr_playerSelectState()

#region Behavior

myState = "LoadOutInfo";


if (creator.attack_key && obj_lobby.can_do && !confirmed)
	{
		myCounter = instance_create_depth(x, y, depth, obj_counter);
		confirmed = true;
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
		confirmed = false;
	}


#endregion

#region Transition Triggers
if (obj_lobby.ready  && creator.pause_key)
	{
		//******NOTE********
		//modify with a global or something to determine which game mode we're playing
		audio_stop_sound(snd_Epic_Battle);
		state = sMove;
		room_goto(rm_SurvivalMode);
	}
		if (creator.ult_key)
		{
			state = sCharacterSelect;
		}
		if (creator.grenade_key)
		{
			state = sAbilityInfo
		}
		if (creator.cancel)
		{
			state = sSelect;
		}

#endregion

#region Sprite

#endregion