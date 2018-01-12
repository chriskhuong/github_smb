/// @description Insert description here
// You can write your code in this editor
if state == fire.falling
	{
		gpu_set_fog(true, c_black, 0, 1);
		draw_sprite(spr_bullet, image_index, x, y);
		gpu_set_fog(false, c_white, 0, 0);
		draw_sprite(spr_bullet, image_index, x, (y + 8) + z);
	}
else
	{
		draw_self();
	}