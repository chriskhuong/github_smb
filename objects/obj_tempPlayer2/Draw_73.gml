/// @description Insert description here
// You can write your code in this editor

if (silo == true)
	{
		gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
		gpu_set_alphatestenable(true);
		
		gpu_set_fog(true, myColor, 0, 0);
		draw_self();
		draw_set_alpha(.75);
		draw_sprite_ext(myGunSprite, myGunIndex, myGunX, myGunY, myGunXScale, myGunYScale, myGunAngle, image_blend, image_alpha);
		gpu_set_fog(false, c_white, 0, 0);
		
		gpu_set_alphatestenable(false);
		gpu_set_blendmode(bm_normal);
	}