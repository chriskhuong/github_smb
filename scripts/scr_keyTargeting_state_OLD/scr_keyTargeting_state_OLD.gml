///scr_keyTargeting_state

//show_debug_message("Keyboard Targeting");
var xTo, yTo;
//////KEYBOARD TARGETING//////
//Camera Quick Move
//Move Right
/*
if (aim_right)
    {
        x += spd;
    }
    
if (aim_left)
    {
        x -= spd;
    }

if (aim_down)
    {
        y += spd;
    }

if (aim_up)
    {
        y -= spd;
    }
*/   

move_towards_point(obj_target.x, obj_target.y, 0)
xTo =  obj_tempPlayer.x + lengthdir_x(min(48, distance_to_point(obj_target.x, obj_target.y)), direction)  //96 = circle radius
yTo =  (obj_tempPlayer.y + 32) + lengthdir_y(min(48, distance_to_point(obj_target.x, obj_target.y)), direction)

//controls the speed of the camera
x += (xTo - x) / 25;
y += (yTo - y) / 25;


if (obj_input.fire_key)
    {
        instance_create_depth(obj_gun_01.x + lengthdir_x(obj_gun_01.LenX, obj_gun_01.image_angle) - lengthdir_y(obj_gun_01.LenY, obj_gun_01.image_angle), obj_gun_01.y + lengthdir_y(obj_gun_01.LenX, obj_gun_01.image_angle) + lengthdir_x(obj_gun_01.LenY, obj_gun_01.image_angle), depth, obj_bullet);
    }

if (obj_input.swap_mode)
    {
        target_state = scr_mouseTargeting_state;
    }
