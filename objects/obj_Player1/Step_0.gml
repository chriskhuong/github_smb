/// @description Insert description here
// You can write your code in this editor

horiz = keyboard_check(vk_right) - keyboard_check(vk_left);
vert = keyboard_check(vk_down) - keyboard_check(vk_up);

x += horiz * 15;
y += vert * 15;

//camera_set_view_pos(myCam,x-camera_get_view_width(myCam)/2,y-camera_get_view_height(myCam)/2);