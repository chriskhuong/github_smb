///scr_shieldState()

var rng = 48;   //KEEP THIS NUMBER IN MIND
                //if this changes then the variable in the create event of the shield needs to change too!

if (instance_number(obj_shield) < 1)
    {
        var shield = instance_create_depth((x + lengthdir_x(rng, obj_tempGun.image_angle)), y + lengthdir_y(rng, obj_tempGun.image_angle), depth, obj_shield);
        shield.creator = id;
        shield.phy_rotation = -obj_tempGun.image_angle;
    }
