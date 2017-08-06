creator = noone;
knockback = 10;

LV_StartX = x + lengthdir_x(obj_tempGun.LenX, obj_tempGun.image_angle) - lengthdir_y(obj_tempGun.LenY, obj_tempGun.image_angle);
LV_StartY = (y - 5) + lengthdir_y(obj_tempGun.LenX, obj_tempGun.image_angle) + lengthdir_x(obj_tempGun.LenY, obj_tempGun.image_angle);

show_debug_message("BANG!!!");

show_debug_message(string(LV_StartX) + " " + string(LV_StartY));

/////DEBUGGING SHIT///////

instance_create_depth(LV_StartX, LV_StartY, depth, obj_StartPoint);

