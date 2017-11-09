///Initialize the shield object

image_alpha = .25;

creator = noone;

rng = 48; //how clost the shield is to the player
//var dir = point_direction(obj_tempPlayer.x, obj_tempPlayer.y, obj_target.x, obj_target.y);

if (creator != noone)
    {
        x = creator.x + lengthdir_x(rng, creator.myGun.image_angle);
        y = creator.y + lengthdir_y(rng, creator.myGun.image_angle);
    }

alarm[0] = room_speed * 5;

