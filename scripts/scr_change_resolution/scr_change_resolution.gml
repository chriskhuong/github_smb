var res_width = obj_resolution.ideal_width;
if(res_width < obj_resolution.max_resolution)
{
switch(argument0)
	{
		case 0:
		window_set_size(res_width,obj_resolution.ideal_height);
		//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 1:
		res_width = 1280;
		window_set_size(res_width,720);
			//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 2:
		res_width= 1920;
		window_set_size(1920,1080);
			//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 3:
		res_width = 2560
		window_set_size(2560,1440);
			//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 4:
		res_width = 3840;
		window_set_size(3840,2160);
			//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
	}
}
else 
{
	window_set_size(obj_resolution.ideal_width,obj_resolution.ideal_height);
}
