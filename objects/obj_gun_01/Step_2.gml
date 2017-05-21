x = obj_tempPlayer.x - 5;
y = obj_tempPlayer.y + 11;

obj_tempPlayer.movement = MOVE;

direction = point_direction(x, y, obj_target.x, obj_target.y)
image_angle = direction;

if (image_angle < 315 && image_angle > 225)
    {
        sprite_index = spr_maid_front_gun;
        obj_tempPlayer.facing = DOWN;
        depth = obj_tempPlayer.depth-10;
    }
else if (image_angle < 225 && image_angle > 135)
    {
        sprite_index = spr_maid_side_gun;
        obj_tempPlayer.facing = LEFT;
        depth = obj_tempPlayer.depth-10;
        obj_tempPlayer.image_xscale = 1;
    }
else if (image_angle < 135 && image_angle > 45)
    {
        sprite_index = spr_maid_back_gun;
        obj_tempPlayer.facing = UP;
        depth = obj_tempPlayer.depth+10;
    }
else
    {
        sprite_index = spr_maid_side_gun;
        obj_tempPlayer.facing = RIGHT;
        depth = obj_tempPlayer.depth-10;
        obj_tempPlayer.image_xscale = -1;
    }


//image_blend = c_red;
/*if (sprite_index = spr_maid_front_gun)
    {
        LenX = 19;
        LenY = 1;
    }
*/

/* */
/*  */
