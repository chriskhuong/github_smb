///scr_ghostState()

#region Behavior

myState = "Dead";
myGunAlpha = 0;
myArmAlpha = myGunAlpha;
myTargetAlpha = myGunAlpha;
silo = false;

#endregion

#region Sprite

sprite_index = special[character, DEAD];

#endregion

#region Transition Triggers

if (image_index + 1 >= image_number)
	{
		deadBody = instance_create_depth(x, y, depth, obj_deadBody);
		deadBody.creator = id;
		deadBody.sprite_index = special[character, DEAD];
		deadBody.image_xscale = image_xscale;
		deadBody.image_alpha = 1;
		deadBody.image_speed = 0;
		deadBody.image_index = image_index;
		deadBody.start_height = start_height;
		deadBody.start_width = start_width;
		deadBody.start_yoffset = start_yoffset
		deadX = deadBody.x;
		deadY = deadBody.y;
		deathNumber += .5;
		alive = false;
		state = sGhost;
		
		if (instance_exists(obj_playerTracker))
			{
				obj_playerTracker.alarm[0] = 1;
			}
		/*
		var dead = 0;		
		for(var hello = 0; hello < instance_number(obj_Player); hello++)
			{
				var playerCount = instance_number(obj_Player);
				players[hello] = instance_find(obj_Player,hello);
				if(players[hello].state == sGhost)
					{
					   dead += 1; 
					}
				if(dead == playerCount)
					{	
						global.allDead = true;
						obj_playerStats.alarm[5] = room_speed * 3;
					}
				else
					{
						global.allDead = false;	
					}
			}
		*/
	}

#endregion