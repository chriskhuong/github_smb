///scr_get_input

//Gets the input for our character
key_right = keyboard_check(ord("D"));   //key_right
key_left = keyboard_check(ord("A"));    //key_left
key_down = keyboard_check(ord("S"));    //key_down
key_up = keyboard_check(ord("W"));      //key_up

//Gets aim inputs
aim_right = keyboard_check(vk_right);   //aim_right
aim_left = keyboard_check(vk_left);     //aim_left
aim_down = keyboard_check(vk_down);     //aim_down
aim_up = keyboard_check(vk_up);         //aim_up

keyboard_shoot = keyboard_check(vk_shift);
mouse_shoot = mouse_check_button(mb_left);
