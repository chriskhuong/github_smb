/// @description scr_rescueState()

#region Behavior

myState = "Rescue";
attacked = false;
movement = RESCUE;
myGunIndex = 0;
myGunAlpha = 0;
myArmAlpha = myGunAlpha;
transparency = TALIVE;

#endregion

#region Transition Triggers

#region Hit Stun

if(hit)
	{
		len = knockback;
		hit = false;
		state = sStun;
	}

#endregion
//if instance_exists(helping)
//{
#region Reviving

if (creator.attack_key)
    {
		helping.deathCounter += 20;
/*		
		#region interaction with dead body
		
                with (dead)
                    {
                        if (!alive)
                            {

										alive = true;
										silo = true;
										deathCounter = maxDeathCounter;
										myStats.hp = myStats.maxHp;
										state = sMove;
										with (deadBody)
											{
												alarm[0] = 60;
												alarm[1] = 30;
											}
                            }
                    }
					
			#endregion
*/		
    }

if(helping.deathCounter >= helping.maxDeathCounter)
	{
		with(obj_SurvivalController)
			{
				playersDead--;
				event_user(0);
			}
		helping.alive = true;
		helping.silo = true;
		helping.hp = floor(maxHp/2)
		helping.rescue = false;
		helping.state = sMove;
		with(helping.deadBody)
			{
				instance_destroy();
			}
		state = sMove;
		//helping.alarm[0] = 60;
	}
if(helping.deathCounter <= 0)
	{
		state = sMove;
	}

#endregion
//}
#endregion

#region Sprite

sprite_index = special[character, movement];

#endregion
