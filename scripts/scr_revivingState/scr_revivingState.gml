/// @description scr_moveState()

#region Behavior

myState = "Revive";
attacked = false;
movement = MOVE;
myGunIndex = 0;
myGunAlpha = 1;
myArmAlpha = myGunAlpha;

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
		helping.alive = true;
		helping.silo = true;
		helping.hp = floor(maxHp/2)
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

#endregion

#region Sprite

sprite_index = sprite[facing, movement];

#endregion
