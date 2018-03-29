/// @description Insert description here
event_inherited();
//instance_create_depth(x, y, depth, obj_tempBoom);
for(var i = 0; i < random_range(1, 5); i++)
	{
		instance_create_depth(x + random_range(-32, 32), y + random_range(-32, 32),depth, obj_ammo);
		
		if (scr_chance(.35))
			{
				instance_create_depth(x + random_range(-4, 4), y + random_range(-4, 4),depth, obj_health); //TEMP HEALTH
			}
	}