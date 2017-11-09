/// @description draw the level

switch (status)
	{
		case 0:	//unavailable
			draw_sprite_ext(spr_level, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
			break;
		case 1:	//available
			draw_sprite_ext(spr_level, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
			break;
		case 2:
			draw_sprite_ext(spr_level, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
			draw_sprite(spr_flag, 0, x, y);
			break;
	}

//draw_text(x, y, levelID)	//for debugging the id's of the level