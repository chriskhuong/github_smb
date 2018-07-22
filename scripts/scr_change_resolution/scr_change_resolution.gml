//Going to try to go over this and optimize it later. I have some ideas.


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
		else if(!(obj_resolution.res_width > maxRes)) // check to make sure after setting this resolution we do not exceed the max
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
		else if(!(obj_resolution.res_width > maxRes))// check to make sure after setting this resolution we do not exceed the max
		{
		window_set_size(obj_resolution.res_width,720);
		window_set_fullscreen(false);
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
			else
		{
			show_message("You screen does not support this resolution setting.");
			obj_resolution.res_width = 1024; // We exceeded the max resolution set it back to the previous res
		}
		obj_mainMenu.alarm[0] = 1;
		break;
		case 2:
		obj_resolution.res_width= 1920;
			if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);	
		}
		else if(!(obj_resolution.res_width > maxRes))
		{
		window_set_size(1920,1080);
		window_set_fullscreen(false);
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		else
		{
			show_message("You screen does not support this resolution setting.");
			obj_resolution.res_width = 1280;// We exceeded the max resolution set it back to the previous res
		}
		obj_mainMenu.alarm[0] = 1;
		break;
		case 3:
		obj_resolution.res_width = 2560
			if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);	
		}
		else if(!(obj_resolution.res_width > maxRes))
		{
		window_set_size(2560,1440);
		window_set_fullscreen(false);
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		else
		{
			show_message("You screen does not support this resolution setting.");
			obj_resolution.res_width = 1920;// We exceeded the max resolution set it back to the previous res
		}
		obj_mainMenu.alarm[0] = 1;
		break;
		case 4:
		obj_resolution.res_width = 3840;
			if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);	
		}
		else if(!(obj_resolution.res_width > maxRes))
		{
			window_set_size(3840,2160);
			window_set_fullscreen(false);
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		else
		{
			show_message("You screen does not support this resolution setting.");
			obj_resolution.res_width = 2560;// We exceeded the max resolution set it back to the previous res
		}
		obj_mainMenu.alarm[0] = 1;
		break;
		
		default:
		break;
	}
}

