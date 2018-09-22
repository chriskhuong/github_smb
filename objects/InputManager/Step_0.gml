/// @description Insert description here
// You can write your code in this editor
//scr_getInput(playerSlot);
if((pause_key && room != rm_characterSelect && room != rm_Main_Menu)){
    paused = !paused;
    if(!sprite_exists(screenShot)){
        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
    }
}
if(paused){
    instance_deactivate_all(1);
	instance_activate_object(obj_menu);
}else{
    if(sprite_exists(screenShot)){
        sprite_delete(screenShot);
    }
    instance_activate_all();
	paused = false;
}