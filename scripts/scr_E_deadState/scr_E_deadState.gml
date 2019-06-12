/// @description scr_hitStunState()

#region Behavior

myState = "Dead"
myGunAlpha = 0;

#endregion

#region Transition Triggers

//The End
dead = instance_create_depth(x, y, depth, obj_deadBody);
dead.creator = id;
dead.sprite_index = sprite[character, DEAD];
dead.image_xscale = image_xscale;
dead.image_speed = image_speed;
dead.image_alpha = 1;
dead.alarm[0] = 120;
dead.alarm[1] = 60;

instance_destroy();
with(obj_Player)
{
	if(instance_exists(obj_tempBullet))
	{
		if(obj_tempBullet.creatorid == myStats.creator)
		{
		 myStats.creator.killCounter += 1;
		}
	}
	else if(myStats.creator.attacked)
	{
		myStats.creator.killCounter += 1;
	}
	else if(instance_exists(obj_tempBoom))
	{
		if(obj_tempBoom.creatorid == myStats.creator)
		{
			myStats.creator.killCounter += 1;
		}
	}
}

#endregion

#region Sprite

//invert to have you facing the enemy that hit you

sprite_index = sprite[character, DEAD];

#endregion
