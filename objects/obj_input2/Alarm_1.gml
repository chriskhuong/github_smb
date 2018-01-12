/// @description Insert description here
// You can write your code in this editor
delay = true;
if(!sprite_exists(screenShot))
	{
		screenShot = sprite_create_from_surface(application_surface, 0, 0, view_w * 2, view_h * 2, 0, 0, 0, 0);
	}
	
with(obj_tempPlayer2)
	{
		silo = true;
	}
	
instance_deactivate_all(true);