creator = noone;
if(creator == noone)
    {
        x = obj_spawnZone.x;
        y = obj_spawnZone.y;
    }
else
    {
        x = creator.x - 5;
        y = creator.y + 11;
    }
    
weapon = 0;

dir = point_direction(x, y, obj_target.x, obj_target.y)
image_angle = dir;
LenX = 19;
LenY = 1;

