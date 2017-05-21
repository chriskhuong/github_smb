///Initialize the shield object

creator = noone;

rng = 48; //how clost the shield is to the player
//var dir = point_direction(obj_tempPlayer.x, obj_tempPlayer.y, obj_target.x, obj_target.y);

if (creator != noone)
    {
        phy_position_x = creator.x + lengthdir_x(rng, obj_tempGun.image_angle);
        phy_position_y = creator.y + lengthdir_y(rng, obj_tempGun.image_angle);
    }

alarm[0] = room_speed * 5;

