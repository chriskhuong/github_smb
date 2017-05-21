if (instance_exists(obj_tempGun))
    {
        x = obj_tempGun.x + lengthdir_x(obj_tempGun.LenX, obj_tempGun.image_angle) - lengthdir_y(obj_tempGun.LenY, obj_tempGun.image_angle);
        y = (obj_tempGun.y - 2) + lengthdir_y(obj_tempGun.LenX, obj_tempGun.image_angle) + lengthdir_x(obj_tempGun.LenY, obj_tempGun.image_angle);
    }
else
    {
        x = x;
        y = y;
    }

