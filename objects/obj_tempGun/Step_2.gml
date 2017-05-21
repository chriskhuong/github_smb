x = creator.x;
y = creator.y + 11;

obj_tempPlayer.movement = MOVE;

dir = point_direction(x, y, obj_target.x, obj_target.y)
image_angle = dir;

if (image_angle < 315 && image_angle > 225)
    {
        sprite_index = obj_tempPlayer.weaponArray[weapon, 2];
        obj_tempPlayer.facing = DOWN;
        depth = obj_tempPlayer.depth-10;
        image_index = 0;
    }
else if (image_angle < 225 && image_angle > 135)
    {
        sprite_index = obj_tempPlayer.weaponArray[weapon, 1];
        obj_tempPlayer.facing = LEFT;
        image_yscale = -1;
        depth = obj_tempPlayer.depth-10;
        obj_tempPlayer.image_xscale = 1;
        image_index = 0;
    }
else if (image_angle < 135 && image_angle > 45)
    {
        sprite_index = obj_tempPlayer.weaponArray[weapon, 2];
        obj_tempPlayer.facing = UP;
        depth = obj_tempPlayer.depth+10;
        image_index = 0;
    }
else
    {
        sprite_index = obj_tempPlayer.weaponArray[weapon, 1];
        obj_tempPlayer.facing = RIGHT;
        image_yscale = 1;
        depth = obj_tempPlayer.depth-10;
        obj_tempPlayer.image_xscale = -1;
        image_index = 0;
    }



