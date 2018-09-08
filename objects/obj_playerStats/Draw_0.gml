/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor	
	
		if(creator.state == sReload)
	{
		draw_sprite(spr_reloadCoolDownGrey,0,creator.x -15, creator.y - 46);	
	}
	if(InputManager.reload)
	{
					rCoolDown = true;
					rCooltime = 80;
	}
				if(rCoolDown == true)
					{
						rCooltime = rCooltime - 1;
						depth = -5000
						draw_sprite_part_ext(spr_reloadCoolDown,0,0,0,((sprite_get_width(sprite345) / 80) * rCooltime),sprite_get_height(sprite345),creator.x - 15, creator.y -60,image_xscale,image_yscale,-1,.6);	
						if(rCooltime >= 80)
							{
								rCooltime -= 1;
								rCoolDown = false;
							}
						}

