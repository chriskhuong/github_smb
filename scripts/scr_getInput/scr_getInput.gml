///scr_getInput(device)
playerSlot = argument0;

right_key		= inputdog_analog("right",				playerSlot);	//keyboard_check(ord("D"));
left_key		= inputdog_analog("left",				playerSlot);	//keyboard_check(ord("A"));
up_key			= inputdog_analog("up",					playerSlot);	//keyboard_check(ord("W"));
down_key		= inputdog_analog("down",				playerSlot);	//keyboard_check(ord("S"));
right_pressed	= inputdog_pressed("right",				playerSlot);	//keyboard_check(ord("D"));
left_pressed	= inputdog_pressed("left",				playerSlot);	//keyboard_check(ord("A"));
up_pressed		= inputdog_pressed("up",				playerSlot);	//keyboard_check(ord("W"));
down_pressed	= inputdog_pressed("down",				playerSlot);	//keyboard_check(ord("S"));
right_aim		= inputdog_analog("aimright",			playerSlot);	//keyboard_check(vk_right); //|| keyboard_check(ord('D'));
left_aim		= inputdog_analog("aimleft",			playerSlot);	//keyboard_check(vk_left); //|| keyboard_check(ord('A'));
up_aim			= inputdog_analog("aimup",				playerSlot);	//keyboard_check(vk_up); //|| keyboard_check(ord('W'));
down_aim		= inputdog_analog("aimdown",			playerSlot);	//keyboard_check(vk_down); //|| keyboard_check(ord('S'));
dash_key		= inputdog_pressed("dash_key",			playerSlot);	//keyboard_check_pressed(ord("Q"));    //change this variable to 'action' not everyone can dash
attack_key		= inputdog_pressed("attack_key",		playerSlot);	//keyboard_check_pressed(ord("V")) || mouse_check_button(mb_right);  //change this variable to 'shoot' //come back to this
cancel			= inputdog_pressed("cancel",			playerSlot);	//keyboard_check(ord("R"));
reload			= inputdog_pressed("reload",			playerSlot);	//keyboard_check(ord("R"));
action			= inputdog_pressed("action",			playerSlot);	//keyboard_check(ord("Y"));
pause_key		= inputdog_pressed("pause_key",			playerSlot);	//keyboard_check_pressed(vk_escape);
fire_key		= inputdog_down("fire_key",				playerSlot);	//keyboard_check(vk_space);
fire_press		= inputdog_pressed("fire_key",			playerSlot);	//here to check auto reloading
grenade_key		= inputdog_pressed("grenade_key",		playerSlot);	//mouse_check_button_pressed(ord("G"));
ult_key			= inputdog_pressed("ultimate",			playerSlot);	//keyboard_check_pressed(ord("E"));
swap_mode		= inputdog_pressed("swap_mode",			playerSlot);	//keyboard_check_pressed(ord("`")); //AIMING PURPOSES
active_items_key= inputdog_pressed("active_items_key",	playerSlot);	//keyboard_check_pressed(ord("Z"));
switch_weapon	= inputdog_pressed("switch_weapon",		playerSlot);	//keyboard_check_pressed(vk_tab);
switch_char_up	= inputdog_pressed("switch_char_up",	playerSlot);	//keyboard_check_pressed(ord("N")); //TEMPORARY CHARACTER SWAP
switch_char_down= inputdog_pressed("switch_char_down",	playerSlot);	//keyboard_check_pressed(ord("M")); //TEMPORARY CHARACTER SWAP
//aiming

//Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

xaim = (right_aim - left_aim);
yaim = (down_aim - up_aim);


return playerSlot;
