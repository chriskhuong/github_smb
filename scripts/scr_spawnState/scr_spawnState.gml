///scr_DeadState()

#region Behavior

myState = "Spawn";
myGunAlpha = 0;
myArmAlpha = myGunAlpha;
myTargetAlpha = myGunAlpha;
silo = false;
alive = true;
transparency = TALIVE;

#endregion

#region Sprite

sprite_index = special[character, SPAWN];

#endregion

#region Transition Triggers

if (image_index + 1 >= image_number)
	{
		creator.yaim = .1;
		state = sMove;
	}

#endregion