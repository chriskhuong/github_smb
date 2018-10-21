InputManager.paused = false;
if(global.allDead)
{
	instance_activate_object(InputForPlayer1);
	instance_activate_object(InputForPlayer2);
	instance_activate_object(InputForPlayer3);
	instance_activate_object(InputForPlayer4);
	instance_activate_all();
	with(obj_Player)
		{
			persistent = false;
		}
	with(obj_playerStats)
		{
			persistent = false;
		}
	InputManager.paused = false;
	room_restart();
	with(obj_Player)
		{
			persistent = true;
		}
}