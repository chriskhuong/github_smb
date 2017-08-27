x = creator.x;
y = creator.y + 11;

LenX = -creator.weaponArray[weapon, 13];
LenY = -creator.weaponArray[weapon, 14];

creator.movement = MOVE;

dir = point_direction(x, y, creator.myTarget.x, creator.myTarget.y)
image_angle = dir;

if (image_angle < 315 && image_angle > 225)
    {
        sprite_index = creator.weaponArray[weapon, 2];
        creator.facing = DOWN;
        depth = creator.depth-10;
        image_index = 0;
    }
else if (image_angle < 225 && image_angle > 135)
    {
        sprite_index = creator.weaponArray[weapon, 1];
        creator.facing = LEFT;
        image_yscale = -1;
        depth = creator.depth-10;
        creator.image_xscale = 1;
        image_index = 0;
    }
else if (image_angle < 135 && image_angle > 45)
    {
        sprite_index = creator.weaponArray[weapon, 2];
        creator.facing = UP;
        depth = creator.depth+10;
        image_index = 0;
    }
else
    {
        sprite_index = creator.weaponArray[weapon, 1];
        creator.facing = RIGHT;
        image_yscale = 1;
        depth = creator.depth-10;
        creator.image_xscale = -1;
        image_index = 0;
    }



