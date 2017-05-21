///Keep shield around the player

scr_get_depth();

if (instance_exists(creator))
    {
        phy_position_x = creator.x + lengthdir_x(rng, obj_tempGun.image_angle);
        phy_position_y = creator.y + lengthdir_y(rng, obj_tempGun.image_angle);
    }
    
phy_rotation = -obj_tempGun.image_angle;

