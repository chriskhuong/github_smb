///Initialize the teatime object

image_alpha = .25;

spd = 1;

creator = noone;    //noone is GameMaker specific keyword for no object

if (creator != noone)
    {
        x = creator.x;
        y = creator.y;
    };

alarm[0] = room_speed * 2;

