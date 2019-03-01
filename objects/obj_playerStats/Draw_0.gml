/// @description Insert description here
// You can write your code in this editor	

if(creator.state == sReload)
	{
		var gunUIReload = creator.weaponArray[creator.weapon, 19];
		var gunUIStart =  sprite_get_bbox_left(gunUIReload);
		var gunUIOffset = 50;
		var gunUIEnd =  sprite_get_bbox_right(gunUIReload);
		var gunNum = sprite_get_number(creator.weaponArray[creator.weapon, 18]);
		var gunUIWidth = sprite_get_width(creator.weaponArray[creator.weapon, 19])/2;
		var gunDuration = (gunNum * creator.myGunSpeed) - 10;	//this is what was screwing us, forgot I had to rig the reload anim to increment properly with myGunSpeed in the reload state
																//only subtracted by this 10 so you could actually see the UI finish animating before it disappears
		var gunUIAnim = scr_ease_linear(rCoolTime, gunUIStart, gunUIEnd - gunUIStart, gunDuration);
		
		draw_sprite_ext(gunUIReload,0,creator.x - gunUIWidth, creator.y - gunUIOffset,image_xscale,image_yscale,image_angle,image_blend,1);
		draw_sprite_part_ext(gunUIReload,1,0,0,gunUIAnim,sprite_get_height(gunUIReload),creator.x - gunUIWidth, creator.y - gunUIOffset,image_xscale,image_yscale,-1,1);
		if (creator.weapon == 1 && creator.character == JO)
			{
				draw_sprite_part_ext(gunUIReload,1,0,0,gunUIAnim,sprite_get_height(gunUIReload),(creator.x - gunUIWidth) + 5, creator.y - (gunUIOffset + 5),image_xscale,image_yscale,-1,1);
			}
		rCoolTime++;
	}
else
	{
		rCoolTime = 0;
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