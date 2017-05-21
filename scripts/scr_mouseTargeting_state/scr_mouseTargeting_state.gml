///scr_mouseTargeting_state
//show_debug_message("Mouse Targeting");

//TO DO: Just really copy what's being called within the step event of the obj_target
    //because for whatever reason this these actions aren't even doing anything.

    obj_target.x = mouse_x;
    obj_target.y = mouse_y;
        
    image_alpha = 1;


if (obj_input.fire_mouse)
    {
       instance_create(obj_tempGun.x + lengthdir_x(obj_tempGun.LenX, obj_tempGun.image_angle) - lengthdir_y(obj_tempGun.LenY, obj_tempGun.image_angle), obj_tempGun.y + lengthdir_y(obj_tempGun.LenX, obj_tempGun.image_angle) + lengthdir_x(obj_tempGun.LenY, obj_tempGun.image_angle), obj_tempBullet);
    }

if (obj_input.swap_mode)//(keyboard_check_pressed(vk_tab))
    {
        target_state = scr_keyTargeting_state;
    }
