///scr_mouseTargeting_state
//show_debug_message("Mouse Targeting");

//TO DO: Just really copy what's being called within the step event of the obj_target
    //because for whatever reason this these actions aren't even doing anything.

    obj_target1.x = mouse_x;
    obj_target1.y = mouse_y;
        
    image_alpha = 1;


if (obj_input1.fire_mouse)
    {
       instance_create_depth(obj_tempGun1.x + lengthdir_x(obj_tempGun1.LenX, obj_tempGun1.image_angle) - lengthdir_y(obj_tempGun1.LenY, obj_tempGun1.image_angle), obj_tempGun1.y + lengthdir_y(obj_tempGun1.LenX, obj_tempGun1.image_angle) + lengthdir_x(obj_tempGun1.LenY, obj_tempGun1.image_angle), depth, obj_tempBullet);
    }

if (obj_input1.swap_mode)//(keyboard_check_pressed(vk_tab))
    {
        target_state = scr_keyTargeting_state1;
    }
