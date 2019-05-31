/// @description Insert description here
// You can write your code in this editor
if(room != rm_characterSelect)
	{
	draw_text(x, y + 50, myState);
	draw_text(x, y + 60, string(facing));
	draw_text(x, y + 70, floor(image_index));
	}

//event_inherited();

if (!alive)// || invisible)
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

#region dying

if (!alive && deathCounter > 0)
	{
		draw_sprite(spr_deathBar, 0, x - (sprite_get_width(spr_deathBar)/2), y + 32);
		draw_sprite_ext(spr_deathBar, 1, x - (sprite_get_width(spr_deathBar)/2), y + 32, (deathCounter/maxDeathCounter), 1, image_angle, image_blend, image_alpha);
	}

#endregion

#region reloading

/// @description Insert description here
// You can write your code in this editor	


if(state == sReload)
	{
		var gunUIReload = weaponArray[weapon, 19];
		var gunUIStart =  sprite_get_bbox_left(gunUIReload);
		var gunUIOffset = 50;
		var gunUIEnd =  sprite_get_bbox_right(gunUIReload);
		var gunNum = sprite_get_number(weaponArray[weapon, 18]);
		var gunUIWidth = sprite_get_width(weaponArray[weapon, 19])/2;
		var gunDuration = (gunNum * myGunSpeed) - 10;	//this is what was screwing us, forgot I had to rig the reload anim to increment properly with myGunSpeed in the reload state
																//only subtracted by this 10 so you could actually see the UI finish animating before it disappears
		var gunUIAnim = scr_ease_linear(myStats.rCoolTime, gunUIStart, gunUIEnd - gunUIStart, gunDuration);
		
		draw_sprite_ext(gunUIReload,0,x - gunUIWidth, y - gunUIOffset,1,1,image_angle,image_blend,1);
		draw_sprite_part_ext(gunUIReload,1,0,0,gunUIAnim,sprite_get_height(gunUIReload),x - gunUIWidth, y - gunUIOffset,1,1,-1,1);
		if (weapon == 1 && character == JO)
			{
				draw_sprite_ext(gunUIReload,0,x - gunUIWidth, y - (gunUIOffset + 5),1,1,image_angle,image_blend,1);
				draw_sprite_part_ext(gunUIReload,1,0,0,gunUIAnim,sprite_get_height(gunUIReload),x - gunUIWidth, y - (gunUIOffset + 5),1,1,-1,1);
			}
		myStats.rCoolTime++;
	}
else
	{
		myStats.rCoolTime = 0;
	}

//////WHAT WE TRIED/////////
/// @description Insert description here
// You can write your code in this editor	
/*
if(creator.state == sReload)
{
if(rCoolDown == false)
{
gunReload = sprite_get_number(creator.weaponArray[creator.weapon, 18]) - 1;
gunUIReload = creator.weaponArray[creator.weapon, 19];
gunUIWidth = (sprite_get_bbox_right(creator.weaponArray[creator.weapon, 19]) + 1) - sprite_get_bbox_left(creator.weaponArray[creator.weapon, 19]);
gunUIStart = sprite_get_bbox_left(creator.weaponArray[creator.weapon, 19]);
imageSpeed = creator.myGunSpeed;
imageAnimation = (imageSpeed * gunReload);
rCoolDown = true;
rCooltime = 0;
}

if(rCoolDown == true)
{
//var reloadAnim = scr_ease_linear(imageAnimation,0,rCooltime,imageAnimation);
var reloadAnim = scr_ease_linear(rCooltime,0,gunUIWidth - gunUIStart,gunReload);
draw_sprite_ext(gunUIReload,0,creator.x - 30, creator.y - 45,image_xscale,image_yscale,image_angle,image_blend,1);
draw_sprite_part_ext(gunUIReload,1,gunUIStart,0,(reloadAnim) ,sprite_get_height(gunUIReload),creator.x - 30, creator.y - 45,image_xscale,image_yscale,-1,1);	

rCooltime += 1;
//rCoolDown = false;

if(rCooltime >= gunReload)
{
rCoolDown = false;
}
}
}
*/


/*//////OLD/////////
		if(rCoolDown == false)
			{
				image = sprite_get_number(creator.weaponArray[creator.weapon, 18]) - 1;
				imageSpeed = creator.myGunSpeed;
				imageAnimation = (imageSpeed * image);
				rCoolDown = true;
				rCooltime = 0;
			}

		if(rCoolDown == true)
			{
				var reloadAnim = scr_ease_linear(imageAnimation,0,rCooltime,imageAnimation);
				draw_sprite_ext(spr_reloadCoolDownGrey,0,creator.x -15, creator.y - 45,image_xscale,image_yscale,image_angle,image_blend,1);
				draw_sprite_part_ext(spr_reloadCoolDown,0,0,0,(reloadAnim) ,sprite_get_height(spr_reloadCoolDown),creator.x - 15, creator.y -60,image_xscale,image_yscale,-1,.6);	
				
				rCooltime += 1;
						//rCoolDown = false;
					
				if(rCooltime >= imageAnimation)
					{
						rCoolDown = false;
						rCooltime = 0;
						imageAnimation = 0;
					}
			}*/

#endregion

pal_swap_set(my_pal_sprite,current_pal,false);

#region Draw Order

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
#endregion

pal_swap_reset();

if(pickup)
	{
		draw_sprite_ext(button_xbox_b, -1, x - (sprite_get_width(button_xbox_a)/4), y-50, .5, .5, image_angle, image_blend, image_alpha);
	}

if(room != rm_characterSelect)
	{
		draw_sprite_ext(weaponArray[weapon, 21], 0, myTargetX, myTargetY, image_xscale, image_yscale, image_angle, image_blend, myTargetAlpha);
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
/*
//COLLOSION BOX
draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_green, c_green, c_green, c_green, true);
*/