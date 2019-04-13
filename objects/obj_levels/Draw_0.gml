/// @description Insert description here
// You can write your code in this editor

switch (status)
	{
		case 0:	//unavailable
			draw_sprite_ext(spr_levelprogress_platforms, myIndex, x, y, 1, 1, image_angle, image_blend, image_alpha);
			break;
		case 1:	//available
			draw_sprite_ext(spr_levelprogress_platforms, myIndex, x, y, 1, 1, image_angle, image_blend, image_alpha);
			break;
		case 2:
			draw_sprite_ext(spr_levelprogress_platforms, myIndex, x, y, 1, 1, image_angle, image_blend, image_alpha);
			draw_sprite(spr_levelprogress_clearedshine,-1,x,y);
			break;
	}