InputManager.paused = false;
if(global.allDead)
{
	instance_activate_object(InputForPlayer1);
	instance_activate_object(InputForPlayer2);
	instance_activate_object(InputForPlayer3);
	instance_activate_object(InputForPlayer4);
	instance_activate_all();
	InputManager.paused = false;
	room_restart();
	with(obj_Player)
		{
			persistent = true;
			x = irandom_range(obj_spawnZone.x - obj_spawnZone.sprite_width/2, obj_spawnZone.x + obj_spawnZone.sprite_width/2);
			y = irandom_range(obj_spawnZone.y - obj_spawnZone.sprite_height/2, obj_spawnZone.y + obj_spawnZone.sprite_height/2);
			state = sMove;
			alive = true;
		}
	with(obj_playerStats)
		{
			persistent = true;
			hp = maxHp;
			alive = true;
		}

}