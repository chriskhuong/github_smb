global.page = 0;
global.menuPage = 0;
instance_deactivate_object(obj_menu);
InputManager.paused = false;
audio_stop_all();
room_goto(rm_Main_Menu);
