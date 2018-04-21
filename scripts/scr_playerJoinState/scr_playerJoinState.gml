/// @description scr_playerSelectState()

#region Behavior

myState = "PlayerJoin";
joined = false;


#endregion

#region Transition Triggers

if (creator.attack_key && !joined)
	{
		joined = true;
	}

if (creator.cancel)
	{
		joined = false;
	}
if (joined)
		{
			state = sSelect;
		}

#endregion

#region Sprite



#endregion