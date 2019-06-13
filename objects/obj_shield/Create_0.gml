///Initialize the shield object

image_alpha = 1;

creator = noone;

rng = 48; //how clost the shield is to the player
//var dir = point_direction(obj_tempPlayer.x, obj_tempPlayer.y, obj_target.x, obj_target.y);

if (creator != noone)
    {
        x = creator.x + lengthdir_x(rng, creator.myGunAngle);
        y = creator.y + lengthdir_y(rng, creator.myGunAngle);
		image_angle = creator.myGunAngle;
    }

alarm[0] = room_speed * 5;