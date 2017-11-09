/// @description Insert description here
// You can write your code in this editor
/*
playerZoneW = obj_tempPlayer1.x + 100;
playerZoneY = obj_tempPlayer1.y + 100;
enemyZoneH = 1;
enemyZoneW = 1;
*/

// set the number of enemies you want to spawn and have it trigger every few seconds based on the alarm.
if(instance_number(obj_tempEnemy) < enemiesNum)
{
	instance_create_depth(random(room_width -64),(room_height -64),-10,obj_tempEnemy);
	alarm[0] = spawnRate;
}
