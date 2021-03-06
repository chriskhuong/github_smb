//Create globals and required objects - as seen in _display_init
global.fontAmmo = font_add_sprite_ext(spr_ammoCount, " 0123456789/", false, -5);
global.fontGrenade = font_add_sprite_ext(spr_count, "0123456789x", false, 0);
instance_create(0,0,obj_palette_manager);
instance_create(0,0,InputForPlayer1);

///Display Properties (As seen in rm_Main_Menu)
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

global.view_x = 0;
global.view_y = 0;
global.view_w = ideal_width;
global.view_h = ideal_height;
//End Display Properties

//setup debug map and establish the properties of the PC
global.debugPCMap = ds_map_create();
ds_map_add(global.debugPCMap,"PCstate",sMove);
ds_map_add(global.debugPCMap,"PCcharacter",JO);
with(InputManager)
{
	ds_map_add(global.debugPCMap,"PCcreator", id);
	ds_map_add(global.debugPCMap,"PCplayerNum", playerSlot);
}
ds_map_add(global.debugPCMap,"PCkeyboard", false);



room_goto_next();

