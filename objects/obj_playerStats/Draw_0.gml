/// @description Insert description here
// You can write your code in this editor	

if(creator.state == sReload)
	{
		if(rCoolDown == false)
			{
				image = sprite_get_number(creator.weaponArray[creator.weapon, 18]) - 1;
				imageSpeed = creator.myGunSpeed;
				imageAnimation = (imageSpeed * image);
				draw_sprite(spr_reloadCoolDownGrey,0,creator.x -15, creator.y - 45);
				rCoolDown = true;
				rCooltime = imageAnimation;
			}

		if(rCoolDown == true)
			{
				draw_sprite_part_ext(spr_reloadCoolDown,0,0,0,((sprite_get_width(spr_reloadCoolDown) / imageAnimation) * rCooltime),sprite_get_height(spr_reloadCoolDown),creator.x - 15, creator.y -60,image_xscale,image_yscale,-1,.6);	
				if(rCooltime > 0)
					{
						rCooltime -= 1;
						//rCoolDown = false;
					}
				if(rCooltime < 1)
					{
						rCoolDown = false;
						//rCooltime = imageAnimation;
					}
			}
	}