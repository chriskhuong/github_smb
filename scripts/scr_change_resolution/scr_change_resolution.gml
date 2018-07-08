var maxRes = obj_resolution.max_resolution;
if(obj_resolution.res_width <= maxRes)
{
switch(argument0)
	{
		case 0:
		obj_resolution.res_width = 1024;
		if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);	
		}
		else
		{
			window_set_size(obj_resolution.res_width,obj_resolution.ideal_height);
			window_set_fullscreen(false);
			}
		//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 1:
		obj_resolution.res_width = 1280;
			if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);	
		}
		else
		{
		window_set_size(obj_resolution.res_width,720);
		window_set_fullscreen(false);
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 2:
		obj_resolution.res_width= 1920;
			if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);	
		}
		else
		{
		window_set_size(1920,1080);
		window_set_fullscreen(false);
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 3:
		obj_resolution.res_width = 2560
			if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);	
		}
		else
		{
		window_set_size(2560,1440);
		window_set_fullscreen(false);
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 4:
		obj_resolution.res_width = 3840;
			if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);	
		}
		else
		{window_set_size(3840,2160);
			window_set_fullscreen(false);
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		
		default:
		break;
	}
}

