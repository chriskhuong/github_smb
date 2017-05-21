///Instantiate target variables
creator = noone;
if(creator == noone)
    {
        x = obj_spawnZone.x;
        y = obj_spawnZone.y;
    }
else
    {
        x = creator.x;
        y = creator.y;
    }

spd = obj_tempPlayer.spd * 10;

