x = obj_player.x - 5;
y = obj_player.y + 11;

direction = point_direction(x, y, obj_target.x, obj_target.y)
image_angle = direction;

if (image_angle < 315 && image_angle > 225)
    {
        sprite_index = spr_maid_front_gun;
        image_yscale = 1;
        obj_player.sprite_index = obj_player.front;
        obj_player.image_xscale = 1;
        depth = obj_player.depth-10;
    }
else if (image_angle < 225 && image_angle > 135)
    {
        sprite_index = spr_maid_side_gun;
        image_yscale = -1;
        obj_player.sprite_index = obj_player.side;
        obj_player.image_xscale = 1;
        depth = obj_player.depth-10;
    }
else if (image_angle < 135 && image_angle > 45)
    {
        sprite_index = spr_maid_back_gun;
        image_yscale = 1;
        obj_player.sprite_index = obj_player.back;
        obj_player.image_xscale = 1;
        depth = obj_player.depth+10;
    }
else
    {
        sprite_index = spr_maid_side_gun;
        image_yscale = 1;
        obj_player.sprite_index = obj_player.side;
        obj_player.image_xscale = -1;
        depth = obj_player.depth-10;
    }


image_blend = c_red;
/*if (sprite_index = spr_maid_front_gun)
    {
        LenX = 19;
        LenY = 1;
    }
*/

/* */
/*  */
