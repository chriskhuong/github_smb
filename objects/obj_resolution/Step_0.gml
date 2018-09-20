/// @description Insert description here
// You can write your code in this editor
if(InputManager.cancel && room != rm_Main_Menu && room != rm_SurvivalMode)
{
	show_debug_message("This is the current state:"+ string(InputManager.pO.state));
	if(InputManager.cancel && backout && InputManager.pO.state == sJoin)
	{
		global.page = 2;
		instance_deactivate_object(obj_Player);
		instance_deactivate_object(obj_playerStats);
		room_goto(0);
	}
}
//show_debug_message(global.page)