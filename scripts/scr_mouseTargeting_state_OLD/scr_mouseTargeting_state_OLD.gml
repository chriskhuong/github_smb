///scr_mouseTargeting_state
//show_debug_message("Mouse Targeting");
var xTo, yTo;

move_towards_point(mouse_x, mouse_y, 0);    //move this object towards our mouse at a speed of 0, only doing this to set the camera's direction.
xTo =  obj_tempPlayer.x + lengthdir_x(min(48, distance_to_point(mouse_x, mouse_y)), direction)  //96 = circle radius
yTo =  (obj_tempPlayer.y + 32) + lengthdir_y(min(48, distance_to_point(mouse_x, mouse_y)), direction)

x += (xTo - x) / 25;
y += (yTo - y) / 25;

if (obj_input.fire_mouse)
    {
       instance_create(obj_gun_01.x + lengthdir_x(obj_gun_01.LenX, obj_gun_01.image_angle) - lengthdir_y(obj_gun_01.LenY, obj_gun_01.image_angle), obj_gun_01.y + lengthdir_y(obj_gun_01.LenX, obj_gun_01.image_angle) + lengthdir_x(obj_gun_01.LenY, obj_gun_01.image_angle), obj_bullet);
    }

if (obj_input.swap_mode)//(keyboard_check_pressed(vk_tab))
    {
        target_state = scr_keyTargeting_state;
    }
