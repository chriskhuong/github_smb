/// @description Insert description here
// You can write your code in this editor
///Draw the stats

#region Variables

//Heart Variables
var xEmpty = 0;
var yEmpty = 0;
var xFull = 0;
var yFull = 0;
var xHalf = 0;
var yHalf = 0;
var xPortrait = 0;
var xSpot = (num * ((global.view_w/2) / 2.5));
var ySpot = (global.view_h - 64);
var xoff = 16;
#endregion
draw_set_halign(fa_right);
//Draws the 4 blocks the user sees in the survival mode screen.
if(room == rm_characterSelect)
draw_sprite(ui_window_blank,0,xSpot- 75,ySpot - 290);
//NOTE: for enemy duplicate, remove this event;
#region Join
//Checks if the players are in the join state and in the testing room we
// only want to draw these in the join screen.
if(creator.state == sJoin && room == rm_characterSelect)
{
	// Draw the background for the player Join screen
	draw_sprite_ext(spr_window_join,0,xSpot- 75,ySpot - 290,image_xscale,image_yscale,0,c_white,1);	
	if (creator.creator.attack_key_analog)
	{
		var color = merge_color(c_white,c_black,1);
		draw_sprite_ext(button_xbox_a,0,xSpot- 23,ySpot - 225,image_xscale,image_yscale,0,color,.7);
	} 
	else
	{
		draw_sprite_ext(button_xbox_a,0,xSpot- 23,ySpot - 225,image_xscale,image_yscale,0,c_white,1);
	}
}
#endregion
#region characterInfo
//Checks if the players are in the Character select state and in the testing room we
// only want to draw these in the character selection screen.
if(creator.state == sCharacterSelect && room == rm_characterSelect)
{
	//Draw the background first, then we draw the HP,then we draw the LB and RB UI at the top of the box,
	//then we draw the A button last.
	draw_sprite_ext(ui_window_character_1,0,xSpot- 75,ySpot - 320,image_xscale,image_yscale,0,c_white,1);
	draw_sprite(ui_text_hp,0,(xSpot + xFull) - 65,ySpot - yFull - 260);
	if(creator.creator.ult_key)
	draw_sprite(button_LB_0,0,(xSpot + xFull) - 78,ySpot - yFull - 315);
	else
	draw_sprite(button_LB_1,0,(xSpot + xFull) - 78,ySpot - yFull - 315);
	if(creator.creator.grenade_key)
	draw_sprite(button_RB_0,0,(xSpot + xFull) + 40,ySpot - yFull - 315);
	else
	draw_sprite(button_RB_1,0,(xSpot + xFull) + 40,ySpot - yFull - 315);
	draw_sprite(ui_text_colorselect,0,xSpot - 67,ySpot - 140);
	if(creator.creator.switch_weapon_analog || creator.creator.left_key)
	{
		draw_sprite(button_arrow_left_0,0,xSpot - 40,ySpot - 120);
	}
	else
	{
		draw_sprite(button_arrow_left_1,0,xSpot - 40,ySpot - 120);
	}
		if(creator.creator.active_items_analog || creator.creator.right_key)
	{
			draw_sprite(button_arrow_right_0,0,xSpot + 20,ySpot - 120);
	}
	else
	{
		draw_sprite(button_arrow_right_1,0,xSpot + 20,ySpot - 120);
	}
	
	draw_sprite(press_a_when_ready,0,xSpot- 75,ySpot - 90);
}
#endregion
#region abilityInfo
//Checks if the players are in the Ability Info state and in the testing room we
// only want to draw these in the Info selection screen.
if(creator.state == sAbilityInfo && room == rm_characterSelect)
{
	//Draw the background for the Ability windows,then the LB and RB, then we draw
	//the abilities for each character that is stored in the character data script.
	draw_sprite_ext(ui_window_abilityinfo_1,0,xSpot- 75,ySpot - 320,image_xscale,image_yscale,0,c_white,1);
		if(creator.creator.ult_key)
	draw_sprite(button_LB_0,0,(xSpot + xFull) - 78,ySpot - yFull - 315);
	else
	draw_sprite(button_LB_1,0,(xSpot + xFull) - 78,ySpot - yFull - 315);
	if(creator.creator.grenade_key)
	draw_sprite(button_RB_0,0,(xSpot + xFull) + 40,ySpot - yFull - 315);
	else
	draw_sprite(button_RB_1,0,(xSpot + xFull) + 40,ySpot - yFull - 315);
	//draw_sprite(press_a_when_ready,0,xSpot- 75,ySpot - 90);
	draw_sprite(spr_abilities,creator.special[creator.character, ABILITYWINDOW0],(xSpot + xFull) - 75,ySpot - yFull - 275);
	draw_sprite(spr_abilities,creator.special[creator.character, ABILITYWINDOW1],(xSpot + xFull) - 75,ySpot - yFull - 170);
}
#endregion
#region Health

if(creator.state == sCharacterSelect && room == rm_characterSelect)
{
	repeat(floor(hp/2))
	{
		if xFull == xoff*10
		{
			yFull = xoff;
			xFull = 0;
		}	
		draw_sprite(spr_hearts,0,(xSpot + xFull) - 25,ySpot - yFull - 260);
		xFull += xoff;
	}
}
else if (room != rm_characterSelect)
{
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
}
#endregion
#region Portraits 
if(creator.state == sSelect && room == rm_characterSelect)
{
	if(creator.creator.up_key)
	{
		draw_sprite(button_arrow_up_0,0,xSpot - 35,ySpot - 315);
	}
	else 
	{
		draw_sprite(button_arrow_up_1,0,xSpot - 35,ySpot - 315);	
	}
	draw_sprite(ui_window_blank,0,xSpot- 75,ySpot - 290);
	draw_sprite(ui_character_britney,creator.special[creator.character, FACE],xSpot - 75,ySpot - 290);
	if(creator.creator.down_key)
	{
		draw_sprite(button_arrow_down_0,0,xSpot- 35,ySpot - 50);
	}
	else
	{
		draw_sprite(button_arrow_down_1,0,xSpot- 35,ySpot - 50);
	}
}
else if (room != rm_characterSelect)
draw_sprite(spr_portraits,creator.special[creator.character, FACE],xSpot - 70,ySpot - 15);

#endregion
#region CoolDowns
if (room != rm_characterSelect)
{
draw_sprite_ext(spr_cooldowns,0,xSpot - 34, ySpot + 18,image_xscale,image_yscale,0,-1,1);
if(creator.creator.dash_key && room != rm_characterSelect)
{
	cooltime = endTime;
	coolDown = true;
}
if(coolDown == true)
{
	cooltime = cooltime - 1;
	depth = -5000
	draw_sprite_part_ext(spr_cooldownGrey,0,4,0,24,((sprite_get_height(spr_cooldownGrey) / endTime) * cooltime),xSpot - 30, ySpot + 18,image_xscale,image_yscale,-1,.6);	
	if(cooltime >= endTime)
		{
			cooltime -= 1;
			coolDown = false;
		}
	}
}
/*
// draw the sprite as a grey background
if (room != rm_characterSelect)
draw_sprite_ext(spr_cooldowns,0,xSpot - 34, ySpot + 18,image_xscale,image_yscale,image_angle,-1,.3);

max
*/
/*var x1 = x - sprite_xoffset;
var y1 = y - sprite_yoffset;
var x2 = x + sprite_width;
var y2 = y + sprite_height;
draw_sprite_part(spr_cooldowns,0,x1,y1,x2,y2,xSpot - 34, ySpot + 18);
*/
/*
if(stamina == maxStamina)
{
	draw_sprite(spr_cooldowns,0,xSpot - 34, ySpot + 18);	
}
if(stamina <= 8 && stamina > 6)
{
	draw_sprite_part(spr_cooldowns,0,4,sprite_get_height(spr_cooldowns)/1.2,sprite_get_width(spr_cooldowns),sprite_get_height(spr_cooldowns),xSpot - 30, ySpot + 30);
}
if(stamina <= 6 && stamina > 5)
{
	draw_sprite_part(spr_cooldowns,0,4,10,24,25,xSpot - 30, ySpot + 30);
}
if(stamina <= 5 && stamina > 4)
{
	draw_sprite_part(spr_cooldowns,0,4,14,24,25,xSpot - 30, ySpot + 30);
}
if(stamina <= 4 && stamina > 2)
{
	draw_sprite_part(spr_cooldowns,0,4,18,24,25,xSpot - 30, ySpot + 30);
}
if(stamina <= 2 && stamina > 0)
{
	draw_sprite_part(spr_cooldowns,0,4,22,24,25,xSpot - 30, ySpot + 30);
}
*/
#endregion
#region Ammo
if (room != rm_characterSelect)
{
draw_set_font(global.fontAmmo);
var ammo_current =  string_format(creator.weaponArray[creator.weapon, 8],3, 0)
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

var clip_current =  string_format(creator.weaponArray[creator.weapon, 10],3, 0)
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
}
#endregion
#region Grenade
if (room != rm_characterSelect)
{
	draw_sprite(spr_grenade,0,xSpot - 6, ySpot + 28);
	draw_set_font(global.fontGrenade);
	draw_set_halign(fa_center);
	draw_sprite(spr_count,10,xSpot + 6, ySpot + 28);
}
#endregion
#region Guns
#region loadOutInfo
if(creator.state == sLoadOutInfo && room == rm_characterSelect)
{
	draw_sprite_ext(ui_window_loadout_1,0,xSpot- 75,ySpot - 320,image_xscale,image_yscale,0,c_white,1);
	if(creator.creator.ult_key)
	draw_sprite(button_LB_0,0,(xSpot + xFull) - 78,ySpot - yFull - 315);
	else
	draw_sprite(button_LB_1,0,(xSpot + xFull) - 78,ySpot - yFull - 315);
	if(creator.creator.grenade_key)
	draw_sprite(button_RB_0,0,(xSpot + xFull) + 40,ySpot - yFull - 315);
	else
	draw_sprite(button_RB_1,0,(xSpot + xFull) + 40,ySpot - yFull - 315);
	//draw_sprite(press_a_when_ready,0,xSpot- 75,ySpot - 90);
	draw_sprite(spr_weapons,creator.weaponArray[1, 17],xSpot- 75,ySpot - 270);
	draw_sprite(spr_weapons,creator.weaponArray[0,17],xSpot- 75,ySpot - 170);
	//draw_sprite(ui_text_ready,0,xSpot- 75,ySpot - 90);
}
else if (room != rm_characterSelect)
{
	draw_text(xSpot + 23, ySpot + 28, creator.weaponArray[1, 15]);
	draw_sprite(spr_guns,creator.weaponArray[creator.weapon, 17],xSpot + 32, ySpot + 20);
	draw_set_color(c_white);
	draw_set_font(font1);	
}
#endregion
#endregion



