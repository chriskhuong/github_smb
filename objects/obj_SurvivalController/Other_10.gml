/// @description Insert description here
// You can write your code in this editor
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
if(playersDead == playerCount)
	{
		global.allDead = true;
		/*
		for (i = 0; i < ds_list_size(players); i++)
			{	
				var thisPlayer = players[| i];
		
				with(thisPlayer)
					{
						myStats.alarm[5] = 1;
					}
			}
		*/
	}