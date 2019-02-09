/// @description Insert description here
// You can write your code in this editor
ini_open("savedata.ini");
ideal_width = 0; // we do not touch this since we caculate this in the code
ideal_height = 576 // we want this for the standard 16:9 resolutions.
res_width = ini_read_real("Variables","resWidth",0);
res_height = ini_read_real("Variables","resHieght",576);
ini_close();
creator = noone;
backout = false;
// grabs the aspect ratio which is 1.7... and that is a 16:9 ratio
aspect_ratio = display_get_width() / display_get_height();
//this is our ideal width we are shooting for with our aspect ratio.
ideal_width = round(ideal_height*aspect_ratio);
var testID = 0;
//Check for odd numbers
if(ideal_width & 1)
{
	ideal_width++;	
}
//This will check that they do not go over there resolution capacity, not done yet.
max_resolution = floor(display_get_width());

//Loops through all the rooms and sets up the view needed for this to work across all rooms.
//You do not need to enable views with this manually its all done here.
/*for(var i = 1; i<= room_last;i++)
{
	if(room_exists(i))
	{
		room_set_view(i,0,true,0,0,ideal_width,ideal_height,0,0,ideal_width,ideal_height,0,0,0,0, obj_Player1);
		room_set_view_enabled(i,true);
	}
}*/
//We resize the surface to scale with everything elseas well as the gui and window size.
surface_resize(application_surface,ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);
global.view_x = 0;
global.view_y = 0;
global.view_w = ideal_width;
global.view_h = ideal_height;
if(res_width > 0)
{
		window_set_size(res_width,res_height);
		obj_mainMenu.alarm[0] = 1;
}
if(max_resolution > 1080)
{
		//obj_resolution.res_width = 1920;
		//window_set_size(res_width,res_height);
		//obj_mainMenu.alarm[0] = 1;
}
//room_goto_next();