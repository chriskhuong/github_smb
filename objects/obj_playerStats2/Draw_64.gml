///Draw the stats

//xCam = camera_get_view_width(view_camera[0])
//yCam = camera_get_view_height(view_camera[0])

var xSpot = (num * ((view_w/2) / 2.5));
var ySpot = (view_h - 64);
var xoff = 16;
draw_set_halign(fa_right);
//draw_set_color(merge_color(c_black, creator.myColor, .5))
//NOTE: for enemy duplicate, remove this event;

for(var i = 0; i < creator.hp; i++)
{
	draw_sprite(spr_hearts,0,(xSpot - 10)+(xoff*i),ySpot - 8);
}
draw_sprite(spr_portraits,creator.special[creator.character, FACE],xSpot - 70,ySpot - 15);
draw_sprite(spr_cooldowns,0,xSpot - 34, ySpot + 18);
draw_sprite(spr_grenade,0,xSpot - 6, ySpot + 28);
draw_set_font(global.fontAmmo);

var ammo_current =  string_format(creator.weaponArray[creator.weapon, 11],3, 0)
//draw_set_alpha(.5);
var ammo_current = string_replace_all(ammo_current," ", "0");
//draw_set_alpha(1);
draw_text(xSpot + 20, ySpot + 8, ammo_current);

draw_text(xSpot + 30, ySpot + 8,"/");

var clip_current =  string_format(creator.weaponArray[creator.weapon, 12],3, 0)
var clip_current = string_replace_all(clip_current," ", "0");
draw_text(xSpot + 64, ySpot + 8, clip_current);

/*draw_text(xSpot + 35, ySpot + 8,"0");
draw_text(xSpot + 48, ySpot + 8,string(creator.weaponArray[creator.weapon, 12]));*/
//draw_sprite(spr_ammoCount,1,xSpot - 5, ySpot + 8);
draw_set_halign(fa_center);
draw_sprite(spr_count,10,xSpot + 6, ySpot + 28);
draw_set_font(global.fontGrenade);
draw_text(xSpot + 23, ySpot + 28, creator.weaponArray[1, 15]);
draw_sprite(spr_guns,creator.weaponArray[creator.weapon, 17],xSpot + 32, ySpot + 20);
draw_set_color(c_white);

draw_set_font(font1);
/*
if(instance_exists(creator.myWeapon))
	{
		draw_text_transformed (xSpot, ySpot + 32, string_hash_to_newline("WEAPON: " + string(creator.myWeapon)), .5, .5, 0);
	}
*/
//draw_text (32, 48, "LEVEL:" + string(level));

//show_debug_message("Device " + string(i) + " connected");
