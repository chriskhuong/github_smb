/// @description Insert description here
// You can write your code in this editor



//whenever playerCharacter touches box
//give player ammo and play animation once
if (place_meeting(obj_supplyCrate.x, obj_supplyCrate.y, obj_Player))
{
	//displayText = true; 
	//image_index = -1; 
	image_speed = .6; 
	
}
else
{
	//displayText = false; 
	//donothing;
	image_index = 0; 
	image_speed = 0; 
}