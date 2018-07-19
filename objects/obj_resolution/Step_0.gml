/// @description Insert description here
// You can write your code in this editor
if(InputManager.cancel && room != rm_Main_Menu && room != rm_SurvivalMode)
{
	instance_deactivate_all(true);
	room_goto(0);
}