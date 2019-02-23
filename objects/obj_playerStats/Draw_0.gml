/// @description Insert description here
// You can write your code in this editor	

if(creator.state == sReload)
	{
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
			}
	}