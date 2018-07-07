/*if keyboard_check_pressed(vk_numpad1)
	{
	room_goto(rm_SurvivalMode);
	}
if keyboard_check_pressed(vk_numpad2)
	{
	room_goto(rm_SurvivalMode2);
	}
if keyboard_check_pressed(vk_numpad3)
	{	
	room_goto(rm_Arctic_Test); 
	}*/
	
	
//because chris's surface pro3 doesn't have numkeypad... :| 

	
if keyboard_check_pressed(vk_f9) && !(room = rm_Arctic_Test)
{
	room_goto_next(); 
}
if keyboard_check_pressed(vk_f10) && !(room = rm_SurvivalMode)
{
	room_goto_previous(); 
}