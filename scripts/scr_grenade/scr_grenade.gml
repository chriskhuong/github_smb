///scr_grenade()

var p = instance_create_depth(x, y, depth, obj_grenade)
var xforce = lengthdir_x(obj_tempGun.LenX, obj_tempGun.image_angle) - lengthdir_y(obj_tempGun.LenY, obj_tempGun.image_angle);
var yforce = lengthdir_y(obj_tempGun.LenX, obj_tempGun.image_angle) + lengthdir_x(obj_tempGun.LenY, obj_tempGun.image_angle);
p.creator = id;

with(p)
    {
        physics_apply_impulse(x, y, xforce, yforce);
    }

