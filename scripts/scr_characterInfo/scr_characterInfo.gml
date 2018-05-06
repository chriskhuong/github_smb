/// @description scr_playerSelectState()

#region Behavior

myState = "CharacterInfo";
var unchosen = .25;
var chosen = 1;

facing = DOWN;
myTargetX = x + 40;
myTargetY = y;

if (creator.attack_key && obj_lobby.can_do && !confirmed)
	{
		myCounter = instance_create_depth(x, y, depth, obj_counter);
		confirmed = true;
		image_speed = chosen;
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
	 else if (creator.grenade_key)
		{
			state = sLoadOutInfo;
		}

		else if (creator.cancel)
		{
			state = sSelect;
		}

#endregion

#region Sprite

sprite_index = sprite[facing, movement];

#endregion