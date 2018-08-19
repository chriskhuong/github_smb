///scr_mouseTargeting_state
//show_debug_message("Mouse Targeting");

//TO DO: Just really copy what's being called within the step event of the obj_target
    //because for whatever reason this these actions aren't even doing anything.

    myTargetX = mouse_x;
    myTargetY = mouse_y;
        
    image_alpha = 1;


if (creator.swap_mode)//(keyboard_check_pressed(vk_tab))
    {
        target_state = scr_keyTargetingState;
    }
