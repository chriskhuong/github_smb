/// @description Insert description here
// You can write your code in this editor
	if(room != rm_characterSelect)
	{
	draw_text(x, y + 50, myState);
	draw_text(x, y + 60, string(facing));
	draw_text(x, y + 70, floor(image_index));
	}
//event_inherited();
if (!alive)
	{
		image_alpha = .75;
	}
else
	{
		image_alpha = 1;
	}
	if(room == rm_characterSelect && state != sCharacterSelect)
	{
		image_alpha = 0;
	}
	
if (room == rm_characterSelect)
	{
		if(room != rm_characterSelect)
	{
		draw_set_halign(fa_center);
		draw_text(x, y + 30, special[character, NAME]);
	}
		
	}

	{
	
		//draw_text(x, y - 60, string(attackSequence));
		//draw_text(x, y - 60, string(dir));
	
	}

pal_swap_set(my_pal_sprite,current_pal,false);
if(room == rm_characterSelect && state = sCharacterSelect)
	{
		switch(gunOver){
			
			case true:
				draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
				draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, myGunAlpha);
				break;
				
			case false:
				draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, myGunAlpha);
				draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
				break;
				
				default:
				break;
			}
	}
else if(room != rm_characterSelect)
	{
		if(character == SEBASTIAN)
			{
				switch(facing)
					{	
						case RIGHT:
							draw_sprite_ext(spr_sebastian_bicep, 0, shoulder_xr, shoulder_yr, 1, 1, bicep_angler, image_blend, myArmAlpha);
							draw_sprite_ext(spr_sebastian_forearm, 0, forearm_xr, forearm_yr, 1, 1, forearm_angler, image_blend, myArmAlpha);
							draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
							draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, myGunAlpha);
							draw_sprite_ext(spr_sebastian_bicep, 0, shoulder_xl, shoulder_yl, 1, -1, bicep_anglel, image_blend, myArmAlpha);
							draw_sprite_ext(spr_sebastian_forearm, 0, forearm_xl, forearm_yl, 1, -1, forearm_anglel, image_blend, myArmAlpha);
							break;
						
						case DOWN:
							draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
							draw_sprite_ext(spr_sebastian_bicep, 0, shoulder_xl, shoulder_yl, 1, -1, bicep_anglel, image_blend, myArmAlpha);
							draw_sprite_ext(spr_sebastian_forearm, 0, forearm_xl, forearm_yl, 1, -1, forearm_anglel, image_blend, myArmAlpha);
							draw_sprite_ext(spr_sebastian_bicep, 0, shoulder_xr, shoulder_yr, 1, 1, bicep_angler, image_blend, myArmAlpha);
							draw_sprite_ext(spr_sebastian_forearm, 0, forearm_xr, forearm_yr, 1, 1, forearm_angler, image_blend, myArmAlpha);
							draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, myGunAlpha);
							break;
							
						case LEFT:
							draw_sprite_ext(spr_sebastian_bicep, 0, shoulder_xl, shoulder_yl, 1, -1, bicep_anglel, image_blend, myArmAlpha);
							draw_sprite_ext(spr_sebastian_forearm, 0, forearm_xl, forearm_yl, 1, -1, forearm_anglel, image_blend, myArmAlpha);
							draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
							draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, myGunAlpha);
							draw_sprite_ext(spr_sebastian_bicep, 0, shoulder_xr, shoulder_yr, 1, 1, bicep_angler, image_blend, myArmAlpha);
							draw_sprite_ext(spr_sebastian_forearm, 0, forearm_xr, forearm_yr, 1, 1, forearm_angler, image_blend, myArmAlpha);
							break;
							
						case UP:
							draw_sprite_ext(spr_sebastian_forearm, 0, forearm_xl, forearm_yl, 1, -1, forearm_anglel, image_blend, myArmAlpha);
							draw_sprite_ext(spr_sebastian_bicep, 0, shoulder_xl, shoulder_yl, 1, -1, bicep_anglel, image_blend, myArmAlpha);
							draw_sprite_ext(spr_sebastian_forearm, 0, forearm_xr, forearm_yr, 1, 1, forearm_angler, image_blend, myArmAlpha);
							draw_sprite_ext(spr_sebastian_bicep, 0, shoulder_xr, shoulder_yr, 1, 1, bicep_angler, image_blend, myArmAlpha);
							draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, myGunAlpha);
							draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
							break;
							
							default:
							break;
					}
			}
		else
			{
				switch(gunOver)
					{
							
							case true:
								draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
								draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, myGunAlpha);
								break;
								
							case false:
								draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, myGunAlpha);
								draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
								break;
								
								default:
								break;
					}
			}
	}
pal_swap_reset();

	if(room != rm_characterSelect)
	{
		draw_sprite_ext(spr_target, 0, myTargetX, myTargetY, image_xscale, image_yscale, image_angle, image_blend, myTargetAlpha);
	}
	

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