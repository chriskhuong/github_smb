///@ description scr_reloadState()

#region Behavior

script_execute(skill[character, ability]);

#endregion

#region Transition Triggers
	
//The transition to this state is in the move state just prior to entering this state

#endregion

#region Sprite

#region Player sprite
    
//Horizontal sprite control

if (hspd > 0)
    {
        facing = RIGHT;
    }
else if (hspd < 0)
    {
        facing = LEFT;
	}
if (vspd > 0)
    {
        facing = DOWN;
    }
else if (vspd < 0)
    {
        facing = UP;
    }


#endregion

sprite_index = special[character, ABILITY];//will use thi
//sprite_index = sprite[facing, movement];	//temp

#endregion