/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(shadowSurface))
	{
		//create it
		//surface_create(384(view_width), 216(view_height))
		shadowSurface = surface_create(room_width, room_height)
	
	}

var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);

var sx = 15;//(room_width/2) - mouse_x;
var sy = 10;//(room_height/2) - mouse_y;

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
		x - (sprite) - viewX - sx,
		y - viewY - sy,
		x + (sprite) - viewX- sx,
		y - viewY - sy,
		x + (sprite) - viewX,
		//y - viewY,
		(y +(start_height - (start_yoffset)))-viewY,
		x - (sprite) - viewX,
		//y - viewY,
		(y +(start_height - (start_yoffset)))-viewY,
		1);
	}
gpu_set_fog(false, c_white, 0, 1);

surface_reset_target();

draw_set_alpha(0.5);
draw_surface(shadowSurface, viewX, viewY);
draw_set_alpha(1);