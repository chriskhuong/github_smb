///scr_shotgun()

for (var i = 0; i < 5; i++)
    {
        //fuck...what am I even doing...
        var p = instance_create(obj_tempGun.x + lengthdir_x(obj_tempGun.LenX, obj_tempGun.image_angle) - lengthdir_y(obj_tempGun.LenY, obj_tempGun.image_angle), obj_tempGun.y + lengthdir_y(obj_tempGun.LenX, obj_tempGun.image_angle) + lengthdir_x(obj_tempGun.LenY, obj_tempGun.image_angle), obj_tempBullet);
        var xforce = lengthdir_x(obj_tempGun.LenX, random_range(obj_tempGun.image_angle - 10, obj_tempGun.image_angle + 10)) - lengthdir_y(obj_tempGun.LenY, random_range(obj_tempGun.image_angle - 10, obj_tempGun.image_angle + 10));
        var yforce = lengthdir_y(obj_tempGun.LenX, random_range(obj_tempGun.image_angle - 10, obj_tempGun.image_angle + 10)) + lengthdir_x(obj_tempGun.LenY, random_range(obj_tempGun.image_angle - 10, obj_tempGun.image_angle + 10));
        p.creator = id;
        with (p)
            {
                physics_apply_impulse(x, y, xforce, yforce);
            }
    }
