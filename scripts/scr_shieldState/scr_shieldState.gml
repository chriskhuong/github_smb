///scr_shieldState()

var rng = 48;   //KEEP THIS NUMBER IN MIND
                //if this changes then the variable in the create event of the shield needs to change too!

if (instance_number(obj_shield) < 1)
    {
        var s = instance_create_depth((x + lengthdir_x(rng, myGun.image_angle)), y + lengthdir_y(rng, myGun.image_angle), depth, obj_shield);
        s.creator = id;
        s.image_angle = -myGun.image_angle;
    }
