///Keep shield around the player

scr_get_depth();

if (instance_exists(creator))
    {
        x = creator.x + lengthdir_x(rng, creator.myGun.image_angle);
        y = creator.y + lengthdir_y(rng, creator.myGun.image_angle);
    }
    
image_angle = creator.myGun.image_angle;

