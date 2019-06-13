/// @description scr_E_spawnState()

#region Behavior

myState = "Spawn"
myGunAlpha = 0;

#endregion

#region Sprite

//invert to have you facing the enemy that hit you

sprite_index = sprite[character, SPAWN];

#endregion

#region Transition Triggers

if (image_index + 1 >= image_number)
	{
		state = sIdle;
	}

#endregion


