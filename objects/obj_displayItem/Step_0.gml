/// @description Insert description here
// You can write your code in this editor
if (place_meeting(obj_displayItem.x, obj_displayItem.y, obj_Player))
{
	//displayText = true; 
	instance_create_depth(obj_displayItem.x, obj_displayItem.y, -9999999, obj_drawDisplayItem)
}
else
{
	//displayText = false; 
	instance_destroy(obj_drawDisplayItem); 
}