///scr_assault()
//might not even need this
//fuck...what am I even doing...
var p = instance_create_depth(obj_tempGun.x + lengthdir_x(obj_tempGun.LenX, obj_tempGun.image_angle) - lengthdir_y(obj_tempGun.LenY, obj_tempGun.image_angle), obj_tempGun.y + lengthdir_y(obj_tempGun.LenX, obj_tempGun.image_angle) + lengthdir_x(obj_tempGun.LenY, obj_tempGun.image_angle), depth, obj_tempBullet);
var xforce = lengthdir_x(obj_tempGun.LenX, (obj_tempGun.image_angle+3)) - lengthdir_y(obj_tempGun.LenY, (obj_tempGun.image_angle+3));
var yforce = lengthdir_y(obj_tempGun.LenX, (obj_tempGun.image_angle+3)) + lengthdir_x(obj_tempGun.LenY, (obj_tempGun.image_angle+3));
p.creator = id;
with (p)
    {
        physics_apply_impulse(x, y, xforce, yforce);
    }
