/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(shadowSurface))
	{
		//create it
		//surface_create(384(view_width), 216(view_height))
		shadowSurface = surface_create(room_width, room_height)
	
	}

var sx = 30; //15;
var sy = 15;

if(keyboard_check_pressed(ord("L")))
	{
		mouse_toggle = !mouse_toggle;
	}
if(mouse_toggle)
	{
		sx = (room_width/2) - mouse_x; 
		sy = (room_height/2) - mouse_y; 
	}

surface_set_target(shadowSurface);
draw_clear_alpha(c_black, 0);

gpu_set_fog(true, c_black, 0, 1);
with(obj_lifeFormParent)
	{	
		var sprite = shadow_var * image_xscale;
		
		draw_sprite_pos(sprite_index, image_index,
		x - (sprite) - global.view_x - sx,
		y - global.view_y - sy,
		x + (sprite) - global.view_x- sx,
		y - global.view_y - sy,
		x + (sprite) - global.view_x,
		//y - viewY,
		(y +(start_height - (start_yoffset)))- global.view_y,
		x - (sprite) - global.view_x,
		//y - viewY,
		(y +(start_height - (start_yoffset)))- global.view_y,
		1);
	}
gpu_set_fog(false, c_white, 0, 1);

surface_reset_target();

draw_set_alpha(0.5);
draw_surface(shadowSurface, global.view_x, global.view_y);
draw_set_alpha(1);