/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (stunFlash)
	{
		gpu_set_fog(true, c_white, 0, 0);
		draw_self();
		gpu_set_fog(false, c_white, 0, 0);
	}