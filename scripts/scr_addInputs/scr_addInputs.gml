//check for gamepads/// @description inputs
inputdog_add_input("left",				ord("A"),			inputdog_gp_left_stick_left);
inputdog_add_input("right",				ord("D"),			inputdog_gp_left_stick_right);
inputdog_add_input("up",				ord("W"),			inputdog_gp_left_stick_up);
inputdog_add_input("down",				ord("S"),			inputdog_gp_left_stick_down);
inputdog_add_input("aimleft",			vk_left,			inputdog_gp_right_stick_left);
inputdog_add_input("aimright",			vk_right,			inputdog_gp_right_stick_right);
inputdog_add_input("aimup",				vk_up,				inputdog_gp_right_stick_up);
inputdog_add_input("aimdown",			vk_down,			inputdog_gp_right_stick_down);
inputdog_add_input("dash_key",			ord("Q"),			gp_shoulderlb);
inputdog_add_input("attack_key",		ord("V")||mb_right,	gp_face1);
inputdog_add_input("cancel",			vk_escape,			gp_face2);
inputdog_add_input("reload",			ord("R"),			gp_face3);
inputdog_add_input("action",			vk_enter,			gp_face4);
inputdog_add_input("pause_key",			vk_escape,			gp_start);
inputdog_add_input("fire_key",			vk_space||mb_left,	gp_shoulderrb);
inputdog_add_input("grenade_key",		ord("G"),			gp_shoulderr);
inputdog_add_input("ultimate",			ord("E"),			gp_shoulderl); 
inputdog_add_input("swap_mode",			ord("`"),			noone);
inputdog_add_input("active_items_key",  ord("Z"),			gp_padr);
inputdog_add_input("switch_weapon",		vk_tab,				gp_padl);
inputdog_add_input("switch_char_up",	ord("N"),			gp_padu);
inputdog_add_input("switch_char_down",  ord("M"),			gp_padd);