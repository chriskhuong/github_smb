/// @description Insert description here
// You can write your code in this editor

//event_inherited();
if (!alive)
	{
		image_alpha = .5;
	}
else
	{
		image_alpha = 1;
	}
	
if (room == New_Testing_Room)
	{
		draw_set_halign(fa_center);
		draw_text(x, y + 30, special[character, NAME]);
		if (confirmed)
			{
				draw_text(x, y + 50, "READY!");
			}
	}
/*	
else
	{
	
		draw_text(x, y - 60, string(attackSequence));
	
	}
*/	
pal_swap_set(my_pal_sprite,current_pal,false);

switch(gunOver){
	
	case true:
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, image_alpha);
		break;
		
	case false:
		draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, image_alpha);
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		break;
		
		default:
		break;
		
}
pal_swap_reset();

draw_sprite_ext(spr_target, 0, myTargetX, myTargetY, image_xscale, image_yscale, image_angle, image_blend, myTargetAlpha);


////SILHOUETTES
if(silo == true)
	{
		gpu_set_blendenable(false);	//disables sprite transparencies
		gpu_set_colorwriteenable(false, false, false, true); //disables color changing to r,g,b channels but enables changes to alpha
		
		draw_set_alpha(0);
		
		var x1 = x - sprite_xoffset;
		var y1 = y - sprite_yoffset;
		var x2 = x + sprite_width;
		var y2 = y + sprite_height;
		
		draw_rectangle(x1, y1, x2, y2, false);
		draw_set_alpha(1);
		
		gpu_set_colorwriteenable(true, true, true, true);
		gpu_set_blendenable(true);
	}