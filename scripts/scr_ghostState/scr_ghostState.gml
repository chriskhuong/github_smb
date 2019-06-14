///scr_ghostState()

#region Behavior

myState = "Ghost";
myGunAlpha = 0;
myArmAlpha = myGunAlpha;
myTargetAlpha = myGunAlpha;
silo = false;
rescue = true;
transparency = TGHOST;

var rng = 15;	//range from body

#region Ghost limitations
/*//THERE'S CODE AT THE BOTTOM
if (alive)
	{
		deadBody = instance_create_depth(x, y, depth, obj_deadBody);
		deadBody.creator = id;
		deadBody.sprite_index = special[character, DEAD];
		deadBody.image_xscale = image_xscale;
		deadBody.image_alpha = 1;
		deadBody.image_speed = image_speed;
		deadBody.start_height = start_height;
		deadBody.start_width = start_width;
		deadBody.start_yoffset = start_yoffset
		dx = deadBody.x;
		dy = deadBody.y;
		deathNumber++;
		alive = false;		
		if (instance_exists(obj_playerTracker))
			{
				obj_playerTracker.alarm[0] = 1;
			}
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
	}
*/


var deadDir = point_direction(x, y, deadX, deadY);
		
if (point_distance(x,y, deadX, deadY) > rng)
	{
		x = deadX - lengthdir_x(rng, deadDir);
		y = deadY - lengthdir_y(rng, deadDir);
	}


#endregion

#region Movement

//Get direction
dir = point_direction(0, 0, creator.xaxis, creator.yaxis);

//Get the length
if (creator.xaxis == 0 && creator.yaxis == 0)   //we're NOT moving
    {
        len = 0;
        movement = IDLE;
    }
    
else    //we're moving
    {
        len = trueSpd;
    }

//Get the h and v speed

//this fixes the speed of any  movement
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);
collision_zoneX = !place_free(x + hspd, y);
collision_zoneY = !place_free(x, y + vspd);

//Move
x += hspd;
y += vspd;

#endregion

deathCounter -= (.5 * deathNumber);

#endregion

#region Transition Triggers

//NOTE: The transition here is in the moveState
//divided 3 by 2 because on death
//we only increment by .5 so the death bar 
//depeletes at a reasonable rate
if (deathCounter < 0)// || deathNumber > (3/2)) 
	{
		g = instance_create_depth(x, y, depth, obj_deadGhost);
		g.image_xscale = image_xscale;
		g.image_alpha = image_alpha;
		g.sprite_index = special[character, GHOST];
		g.image_speed = image_speed;
		with(myArrow)
			{
				instance_destroy();
			}
		//with(obj_SurvivalController)
		//	{
		//		playersDead++;
		//		event_user(0);
		//	}
		//rescue = false;
		state = sGameOver;
	}

#endregion

#region Sprite

if (hspd > 0)
    {
        facing = RIGHT;
		image_xscale = -1;
    }
else if (hspd < 0)
    {
        facing = LEFT;
		image_xscale = 1;
	}

sprite_index = special[character, GHOST];

#endregion