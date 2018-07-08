global.fontAmmo = font_add_sprite_ext(spr_ammoCount, " 0123456789/", false, -5);
global.fontGrenade = font_add_sprite_ext(spr_count, "0123456789x", false, 0);
global.debugPCMap = ds_map_create();

instance_create(0,0,obj_palette_manager);
instance_create(0,0,InputForPlayer1);
instance_create(0,0,InputForPlayer2);
instance_create(0,0,InputForPlayer3);
instance_create(0,0,InputForPlayer4)

if (instance_number(obj_resolution) < 1)
	{
		instance_create(0, 0, obj_resolution);
	}

/*
///Display Properties
ideal_width = 1024;
ideal_height = 768; //256;	//135 //might change this later

display_width = display_get_width();
display_height = display_get_height();

aspect_ratio = display_width/display_height;
ideal_width = round(ideal_height * aspect_ratio);


window_set_size(ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);
surface_resize(application_surface, ideal_width, ideal_height);
window_center();
camera = camera_create();
view_camera[0] = camera;
view_enabled = true;
view_visible[0] = true;



*/


//room_goto(room_next(room))
