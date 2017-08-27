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
        x = creator.x - 5;
        y = creator.y + 11;
    }
    
weapon = 0;

dir = point_direction(x, y, x, y)
image_angle = dir;
LenX = 19;
LenY = 1;

