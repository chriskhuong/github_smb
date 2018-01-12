///Draw the stats

//xCam = camera_get_view_width(view_camera[0])
//yCam = camera_get_view_height(view_camera[0])

var xSpot = (num * ((view_w/2) / 2.5));
var ySpot = (view_h - 64);

draw_set_halign(fa_left);
draw_set_color(merge_color(c_black, creator.myColor, .5))
//NOTE: for enemy duplicate, remove this event;
draw_text_transformed (xSpot, ySpot + 8, string_hash_to_newline("LIVES: " + string(p_lives)), .5, .5, 0);
draw_text_transformed (xSpot, ySpot + 16, string_hash_to_newline("HP: " + string(hp) + "/" + string(maxHp)), .5, .5, 0);
draw_text_transformed (xSpot, ySpot + 24, string_hash_to_newline("STAMINA: " + string(stamina) + "/" + string(maxStamina)), .5, .5, 0);
draw_set_color(c_white);
/*
if(instance_exists(creator.myWeapon))
	{
		draw_text_transformed (xSpot, ySpot + 32, string_hash_to_newline("WEAPON: " + string(creator.myWeapon)), .5, .5, 0);
	}
*/
//draw_text (32, 48, "LEVEL:" + string(level));

//show_debug_message("Device " + string(i) + " connected");
