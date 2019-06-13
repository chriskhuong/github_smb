///scr_shieldState()
transparency = TALIVE;
var rng = 48;   //KEEP THIS NUMBER IN MIND
                //if this changes then the variable in the create event of the shield needs to change too!

if (instance_number(obj_shield) < 1)
    {
        var s = instance_create_depth((x + lengthdir_x(rng, myGunAngle)), y + lengthdir_y(rng, myGunAngle), depth, obj_shield);
        s.creator = id;
        s.image_angle = myGunAngle;
    }

state = sMove;