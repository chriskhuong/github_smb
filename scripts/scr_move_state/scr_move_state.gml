///scr_move_state

scr_get_input();

//Move Right
if (key_right)
    {
        x += spd;
    }

//Move Left
if (key_left)
    {
        x -= spd;
    }

//Move Down
if (key_down)
    {
        y += spd;
    }

//Move Up
if (key_up)
    {
        y -= spd;
    }
    
//Stop Animating
if (!key_right && !key_left && !key_up && !key_down)
    {
        //image_speed = 0;
        //image_index = 0; //animation frame *useful for dust kick-up*
    }
    
///TEMP TARGETING SWITCH
/*    
if(keyboard_shoot)
    {
        obj_game_camera.target_state = scr_keyTargeting_state;
    }
if(mouse_shoot)
    {
        obj_game_camera.target_state = scr_mouseTargeting_state;
    }
*/
