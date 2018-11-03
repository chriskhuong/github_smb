/// @description Insert description here
event_inherited();

//creates trunk in its place in case it is destroyed
//trunk also doesn't have collision so it makes sense for separate object
instance_create_depth(x, y, depth, obj_Bush_Trunk_0); 

//creates ammo and health by chance
/*
for(var i = 0; i < random_range(1, 5); i++)
	{
		instance_create_depth(x + random_range(-32, 32), y + random_range(-32, 32),depth, obj_ammo);
		
		if (scr_chance(.35))
			{
				instance_create_depth(x + random_range(-4, 4), y + random_range(-4, 4),depth, obj_health); //TEMP HEALTH
			}
	}*/