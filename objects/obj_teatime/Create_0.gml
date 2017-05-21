///Initialize the teatime object

spd = 1;

creator = noone;    //noone is GameMaker specific keyword for no object

if (creator != noone)
    {
        phy_position_x = creator.x;
        phy_position_y = creator.y;
    };

alarm[0] = room_speed * 2;

