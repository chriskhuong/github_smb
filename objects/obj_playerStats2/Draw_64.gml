///Draw the stats
if (live_call()) return live_result;

//xCam = camera_get_view_width(view_camera[0])
//yCam = camera_get_view_height(view_camera[0])

var xSpot = (num * ((view_w/2) / 2.5));
var ySpot = (view_h - 64);
var xoff = 24;
draw_set_halign(fa_left);
//draw_set_color(merge_color(c_black, creator.myColor, .5))
//NOTE: for enemy duplicate, remove this event;

for(var i = 0; i < hp; i++)
{
	draw_sprite(spr_hearts,0,(xSpot - 8)+(xoff*i),ySpot - 8);
}
draw_sprite(spr_portraits,0,xSpot - 70,ySpot - 15);
draw_sprite(spr_cooldowns,0,xSpot - 34, ySpot + 18);
draw_sprite(spr_grenade,0,xSpot - 6, ySpot + 28);
draw_set_font(global.fontAmmo);
draw_text(xSpot - 7, ySpot + 8,"0");
draw_text(xSpot +5, ySpot + 8,string(creator.weaponArray[creator.weapon, 11]));
draw_text(xSpot + 27, ySpot + 8,"/");
draw_text(xSpot + 35, ySpot + 8,"0");
draw_text(xSpot + 48, ySpot + 8,string(creator.weaponArray[creator.weapon, 12]));
//draw_sprite(spr_ammoCount,1,xSpot - 5, ySpot + 8);
draw_sprite(spr_count,0,xSpot + 8, ySpot + 30);
draw_sprite(spr_count,1,xSpot + 18, ySpot + 29);
draw_sprite(spr_guns,4,xSpot + 32, ySpot + 20);
draw_set_color(c_white);
/*
if(instance_exists(creator.myWeapon))
	{
		draw_text_transformed (xSpot, ySpot + 32, string_hash_to_newline("WEAPON: " + string(creator.myWeapon)), .5, .5, 0);
	}
*/
//draw_text (32, 48, "LEVEL:" + string(level));

//show_debug_message("Device " + string(i) + " connected");
