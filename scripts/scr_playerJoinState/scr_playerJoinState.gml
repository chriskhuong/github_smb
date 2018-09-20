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
		obj_resolution.backout = true;
	}
if (joined)
		{
			state = sSelect;
			obj_resolution.backout = false;
		}

#endregion

#region Sprite



#endregion