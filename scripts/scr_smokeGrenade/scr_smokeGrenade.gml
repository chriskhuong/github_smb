///scr_smokeGrenade()

var p = instance_create(x, y, obj_active_smokeGrenade)
var xforce = lengthdir_x(obj_tempGun.LenX, obj_tempGun.image_angle) - lengthdir_y(obj_tempGun.LenY, obj_tempGun.image_angle);
var yforce = lengthdir_y(obj_tempGun.LenX, obj_tempGun.image_angle) + lengthdir_x(obj_tempGun.LenY, obj_tempGun.image_angle);
p.creator = id;

with(p)
    {
        physics_apply_impulse(x, y, xforce, yforce);
    }