///Draw the stats
//xCam = camera_get_view_width(view_camera[0])
//yCam = camera_get_view_height(view_camera[0])
//Heart Varibales
var xEmpty = 0;
var yEmpty = 0;
var xFull = 0;
var yFull = 0;
var xHalf = 0;
var yHalf = 0;



var xSpot = (num * ((view_w/2) / 2.5));
var ySpot = (view_h - 64);
var xoff = 16;
draw_set_halign(fa_right);
//draw_set_color(merge_color(c_black, creator.myColor, .5))
//NOTE: for enemy duplicate, remove this event;
#region Health
repeat(maxHp/2)
{
	if xEmpty == xoff*10
	{
		yEmpty = xoff;
		xEmpty = 0;
	}
	draw_sprite(spr_hearts,2,(xSpot + xEmpty) - 10,ySpot - yEmpty - 8);
	xEmpty += xoff;
}
repeat(floor(hp/2) + frac(hp/2)* 2)
{
	if (xHalf >= xoff * 10)
	{
		yFull = xoff;
		xFull = 0;
	}
	draw_sprite(spr_hearts,1,(xSpot +xHalf)-10,ySpot - yHalf - 8)
	xHalf +=xoff;
}
repeat(floor(hp/2))
{
	if xFull == xoff*10
	{
		yFull = xoff;
		xFull = 0;
	}	
	draw_sprite(spr_hearts,0,(xSpot + xFull) - 10,ySpot - yFull - 8);
	xFull += xoff;
}
#endregion
/*
for(var i = 0; i < hp/2; i++)
{
	draw_sprite(spr_hearts,0,(xSpot - 10)+(xoff*i),ySpot - 8);
}*/
draw_sprite(spr_portraits,creator.special[creator.character, FACE],xSpot - 70,ySpot - 15);
draw_sprite(spr_cooldowns,0,xSpot - 34, ySpot + 18);
draw_sprite(spr_grenade,0,xSpot - 6, ySpot + 28);
draw_set_font(global.fontAmmo);

var ammo_current =  string_format(creator.weaponArray[creator.weapon, 11],3, 0)
//draw_set_alpha(.5);
var ammo_current = string_replace_all(ammo_current," ", "0");
var fp = string_char_at(ammo_current,1);
var sp = string_char_at(ammo_current,2);
var tp = string_char_at(ammo_current,3);

//draw_set_alpha(1);
if(fp == "0" && sp != "0")
		{draw_text_color(xSpot - 2, ySpot + 8, fp ,c_gray,c_gray,c_gray,c_gray,.7); draw_text(xSpot + 20, ySpot + 8, sp + tp); }
		
else if(sp == "0" && fp == "0" && tp != "0")
		{draw_text_color(xSpot + 8, ySpot + 8, fp + sp ,c_gray,c_gray,c_gray,c_gray,.7); draw_text(xSpot + 20, ySpot + 8, tp); }
		
else if(tp == "0")
		{draw_text_color(xSpot + 20, ySpot + 8, ammo_current,c_gray,c_gray,c_gray,c_gray,.7);}
		
		
draw_text(xSpot + 30, ySpot + 8,"/");

var clip_current =  string_format(creator.weaponArray[creator.weapon, 12],3, 0)
var clip_current = string_replace_all(clip_current," ", "0");
var fpc = string_char_at(clip_current,1), spc = string_char_at(clip_current,2),tpc = string_char_at(clip_current,3);
if(fpc == "0" && spc != "0")
		{ draw_text_color(xSpot + 40, ySpot + 8, fpc,c_gray,c_gray,c_gray,c_gray,.7);
			draw_text(xSpot + 64, ySpot + 8, spc + tpc);}
else if(spc == "0" && fpc == "0" && tpc != "0")
		{ draw_text_color(xSpot + 52, ySpot + 8, fpc + spc,c_gray,c_gray,c_gray,c_gray,.7);
			draw_text(xSpot + 64, ySpot + 8, tpc);}
else if(tpc == "0")
		{ draw_text_color(xSpot + 64, ySpot + 8, clip_current,c_gray,c_gray,c_gray,c_gray,.7);}


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