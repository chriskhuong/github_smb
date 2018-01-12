/// @description Insert description here
// You can write your code in this editor

if(paused && delay == true)
	{
		draw_sprite_ext(screenShot, 0, view_x, view_y, 0.5, 0.5, 0, c_white, 1);
		draw_text(view_w * 0.5, view_h * 0.5, "Paused");
	}