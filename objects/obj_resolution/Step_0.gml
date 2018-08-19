/// @description Insert description here
// You can write your code in this editor
if(InputManager.cancel && room != rm_Main_Menu && room != rm_SurvivalMode)
{
	global.page = 2;
	instance_deactivate_object(obj_Player);
	instance_deactivate_object(obj_playerStats);
	room_goto(0);	
}
//show_debug_message(global.page)
