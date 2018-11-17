/// @description Insert description here
// You can write your code in this editor
//scr_getInput(playerSlot);

if((pause_key && room != rm_characterSelect && room != rm_Main_Menu)){
    paused = !paused;
    if(!sprite_exists(screenShot)){
        //screenShot = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,1,0,0);    
		   // draw_sprite(screenShot,0,0,0);
	}
}
if(paused){
	draw_sprite(spr_mainMenu,0,0,0)
	instance_deactivate_all(1);
	instance_activate_object(obj_menu);
}else if (!paused){
    if(sprite_exists(screenShot)){
        sprite_delete(screenShot);
    }
    instance_activate_all();
	paused = false;
}