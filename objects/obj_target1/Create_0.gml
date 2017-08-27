///Instantiate target variables
creator = noone;
if(creator == noone)
    {
		if(instance_exists(obj_spawnZone))
			{
				x = obj_spawnZone.x;
				y = obj_spawnZone.y;
			}
		else
			{
				x = 0;
				y = 0;
			}
    }
else
    {
        x = creator.x;
        y = creator.y;
    }

spd = obj_tempPlayer1.spd * 10;

