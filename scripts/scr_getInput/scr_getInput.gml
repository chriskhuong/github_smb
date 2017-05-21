///scr_getInput(device)

right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
right_aim = keyboard_check(vk_right); //|| keyboard_check(ord('D'));
left_aim = keyboard_check(vk_left); //|| keyboard_check(ord('A'));
up_aim = keyboard_check(vk_up); //|| keyboard_check(ord('W'));
down_aim = keyboard_check(vk_down); //|| keyboard_check(ord('S'));
dash_key = keyboard_check_pressed(ord("C"));    //change this variable to 'action' not everyone can dash
attack_key = keyboard_check_pressed(vk_space);  //change this variable to 'shoot'
pause_key = keyboard_check_pressed(vk_escape);
fire_key = keyboard_check_pressed(vk_lshift);
fire_mouse = mouse_check_button(mb_left);
grenade_key = mouse_check_button_pressed(mb_middle);
grenade_release = mouse_check_button_released(mb_middle);   //for my purposes which may not be used.
swap_key = keyboard_check_pressed(vk_rshift);
swap_mode = keyboard_check_pressed(vk_tab); //AIMING PURPOSES
zoom_in = keyboard_check(vk_add);
zoom_out = keyboard_check(vk_subtract);
reload = keyboard_check(ord("R"));
switch_weapon = keyboard_check_pressed(ord("/"));
switch_char_up = keyboard_check_pressed(ord("[")); //TEMPORARY CHARACTER SWAP
switch_char_down = keyboard_check_pressed(ord("]")); //TEMPORARY CHARACTER SWAP
//aiming

//Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

xaim = (right_aim - left_aim);
yaim = (down_aim - up_aim);

//Variable for multiplayer joypad input

dvc = argument0; //dvc is the device (the controller)

//Check for gamepad input
//ALL INPUT IS TBD AFTER TESTING
if (gamepad_is_connected(dvc))
    {
        gamepad_set_axis_deadzone(dvc, .35);
        xaxis = (gamepad_axis_value(dvc, gp_axislh)); //the '.5' is the dead zone of the axis
        yaxis = (gamepad_axis_value(dvc, gp_axislv));
        xaim = (gamepad_axis_value(dvc, gp_axisrh)); //the '.5' is the dead zone of the axis
        yaim = (gamepad_axis_value(dvc, gp_axisrv));
        dash_key = (gamepad_button_check_pressed(dvc, gp_face1)); //this is the bottom button ('A' on xbox);
        attack_key = (gamepad_button_check_pressed(dvc, gp_face3)); //this is the left button ('X' on xbox);
        pause_key = (gamepad_button_check_pressed(dvc, gp_start)); //this is the start button
        fire_key = (gamepad_button_check(dvc, gp_face2)); //this is the right button ('B' on xbox);
        grenade_key = (gamepad_button_check_pressed(dvc, gp_shoulderrb));   //TEMPORARY
        grenade_release = (gamepad_button_check_released(dvc, gp_shoulderrb));   //TEMPORARY
        swap_key = (gamepad_button_check_pressed(dvc, gp_face4)); //this is the top button ('Y' on xbox);
        reload = (gamepad_button_check_pressed(dvc, gp_select)); //TEMPORARY
        switch_weapon = (gamepad_button_check_pressed(dvc, gp_shoulderlb));
        switch_char_up = (gamepad_button_check_pressed(dvc, gp_shoulderr)); //TEMPORARY CHARACTER SWAP
        switch_char_down = (gamepad_button_check_pressed(dvc, gp_shoulderl)); //TEMPORARY CHARACTER SWAP
    }