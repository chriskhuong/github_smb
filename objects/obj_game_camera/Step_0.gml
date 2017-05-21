///Camera Controls
scr_get_input();
script_execute(target_state);

//////KEYBOARD TARGETING//////
//Local Variables


//view_xview = -(view_wview/2) + x;
//view_yview = -(view_hview/2) + y;


//Move 10% towards the player if no keys are pressed
/*
if (!aim_right && !aim_left && !aim_up && !aim_down)
    {
        
    }
*/
        
//Camera Shake
x += random_range(-shake, shake);
y += random_range(-shake, shake);
shake *= .8;

if (keyboard_check(vk_add) && cam_scale < max_scale)
    {
        cam_scale -= 0.01;
    }
if (keyboard_check(vk_subtract) && cam_scale > 1)
    {
        cam_scale += 0.01;
    }
    
__view_set( e__VW.XView, 0, __view_get( e__VW.WView, 0 ) * cam_scale );
__view_set( e__VW.YView, 0, __view_get( e__VW.HView, 0 ) * cam_scale );

/* */
/*  */
