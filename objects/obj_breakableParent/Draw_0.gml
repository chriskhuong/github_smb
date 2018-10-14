/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (stunFlash)
	{
		gpu_set_fog(true, c_white, 0, 0);
		draw_self();
		//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, .65);
		gpu_set_fog(false, c_white, 0, 0);
	}