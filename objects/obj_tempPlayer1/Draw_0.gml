/// @description Insert description here
// You can write your code in this editor

event_inherited();
if (!alive)
	{
		image_alpha = .5;
	}
	
if (room == New_Testing_Room)
	{
		draw_text(x - (start_width/2), y + 30, special[character, NAME]);
		if (confirmed)
			{
				draw_text(x - (start_width/2), y + 50, "READY!");
			}
	}
	
/*
var_time_var += 0.04;

gpu_set_texrepeat(false);
if (shader_enabled)
	{	
		image_alpha = 0;
		shader_set(shd_wave);
		shader_set_uniform_f(uni_time, var_time_var);
		shader_set_uniform_f(uni_resolution, var_sprite_width, var_sprite_height);
		shader_set_uniform_f(uni_wave_amount, var_wave_amount);
		shader_set_uniform_f(uni_wave_distortion, var_wave_distortion);
		shader_set_uniform_f(uni_wave_speed, var_wave_speed);
		draw_self();
		shader_reset();
	}
*/