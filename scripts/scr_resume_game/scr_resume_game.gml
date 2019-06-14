InputManager.paused = false;
if(global.allDead)
{
	//with(obj_enemyParent)
	//	{
	//		instance_destroy();
	//	}
	instance_activate_object(InputForPlayer1);
	instance_activate_object(InputForPlayer2);
	instance_activate_object(InputForPlayer3);
	instance_activate_object(InputForPlayer4);
	instance_activate_all();
	InputManager.paused = false;
	/*
	with(obj_SurvivalController)
		{
			for (i = 0; i < ds_list_size(players); i++)
			{
				var thisPlayer = players[| i];

				with(thisPlayer)
					{
						persistent = true;
						if(instance_exists(obj_spawnZone))
							{
								x = irandom_range(obj_spawnZone.x - obj_spawnZone.sprite_width/2, obj_spawnZone.x + obj_spawnZone.sprite_width/2);
								y = irandom_range(obj_spawnZone.y - obj_spawnZone.sprite_height/2, obj_spawnZone.y + obj_spawnZone.sprite_height/2);
							}
						state = sMove;
						alive = true;
						myStats.persistent = true;
						myStats.hp = myStats.maxHp;
						myStats.alive = true;
					}
			}
		}
	*/
	with(obj_Player)
		{
			persistent = true;
			x = irandom_range(obj_spawnZone.x - obj_spawnZone.sprite_width/2, obj_spawnZone.x + obj_spawnZone.sprite_width/2);
			y = irandom_range(obj_spawnZone.y - obj_spawnZone.sprite_height/2, obj_spawnZone.y + obj_spawnZone.sprite_height/2);
			
			state = sMove;
			hp = maxHp;
			alive = true;
		}
	with(obj_playerStats)
		{
			persistent = true;
			//hp = maxHp;
			//alive = true;
		}
	audio_stop_all();
	room_restart();
	global.allDead = false;
}