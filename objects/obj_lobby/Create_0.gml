/// @description Initialize the player lobby and player number.... maybe
global.fontAmmo = font_add_sprite_ext(spr_ammoCount," 0123456789/",false,-4);
global.fontGrenade = font_add_sprite_ext(spr_count,"0123456789x",true,0);
lobby_queue = ds_list_create();
actual_lobby = ds_list_create();
cam = camera_get_active();
ready = false;
/*
k = instance_create_depth(64, 64, -5000, obj_lobby_tester)
k.image_index = 0;
k.image_speed = 0;
k.keyboard = false;
*/
max_controller_lobby = 4;