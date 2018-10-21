//Going to try to go over this and optimize it later. I have some ideas.
var maxRes = obj_resolution.max_resolution;
if(obj_resolution.res_width <= maxRes)
{
switch(argument0)
	{
		case 0:
		if(maxRes >= 1024)
		{
		obj_resolution.res_width = 1024;
				ini_open("savedata.ini");
		ini_write_real("Variables", "resWidth", obj_resolution.res_width);
		ini_write_real("Variables", "resHieght", obj_resolution.ideal_height);
		ini_close();
		}
		if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);
		ini_open("savedata.ini");
		ini_write_real("Variables", "fullScreen", true);
		ini_close();
		}
		else if(!(obj_resolution.res_width > maxRes)) // check to make sure after setting this resolution we do not exceed the max
		{
			window_set_size(obj_resolution.res_width,obj_resolution.ideal_height);
			window_set_fullscreen(false);
		ini_open("savedata.ini");
		ini_write_real("Variables", "resWidth", obj_resolution.res_width);
		ini_write_real("Variables", "resHieght", obj_resolution.res_height);
		ini_close();
		}
		//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 1:
		if(maxRes >= 1280)
		{
			obj_resolution.res_width = 1280;
			obj_resolution.res_height = 720;
			window_set_size(obj_resolution.res_width,obj_resolution.res_height);
				ini_open("savedata.ini");
		ini_write_real("Variables", "resWidth", obj_resolution.res_width);
		ini_write_real("Variables", "resHieght", obj_resolution.res_height);
		ini_close();
		}
			if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);
			ini_open("savedata.ini");
		ini_write_real("Variables", "fullScreen", true);
		ini_close();
		}
		else if(!(obj_resolution.res_width > maxRes))// check to make sure after setting this resolution we do not exceed the max
		{
			window_set_fullscreen(false);
			ini_open("savedata.ini");
		ini_write_real("Variables", "fullScreen", false);
		ini_close();
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 2:
		if(maxRes >= 1920)
		{
			obj_resolution.res_width= 1920;
			obj_resolution.res_height = 1080;
			window_set_size(obj_resolution.res_width,obj_resolution.res_height);
				ini_open("savedata.ini");
		ini_write_real("Variables", "resWidth", obj_resolution.res_width);
		ini_write_real("Variables", "resHieght", obj_resolution.res_height);
		ini_close();
		}
			if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);	
			ini_open("savedata.ini");
		ini_write_real("Variables", "fullScreen", true);
		ini_close();
		}
		else if(!(obj_resolution.res_width > maxRes))
		{
			window_set_fullscreen(false);
			ini_open("savedata.ini");
		ini_write_real("Variables", "fullScreen", false);
		ini_close();
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 3:
		if(maxRes >= 2560)
		{
			obj_resolution.res_width = 2560;
			obj_resolution.res_height = 1440;
			window_set_size(obj_resolution.res_width,obj_resolution.res_height);
				ini_open("savedata.ini");
		ini_write_real("Variables", "resWidth", obj_resolution.res_width);
		ini_write_real("Variables", "resHieght", obj_resolution.res_height);
		ini_close();
		}
			if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);	
			ini_open("savedata.ini");
		ini_write_real("Variables", "fullScreen", true);
		ini_close();
		}
		else if(!(obj_resolution.res_width > maxRes))
		{
			window_set_fullscreen(false);
			ini_open("savedata.ini");
		ini_write_real("Variables", "fullScreen", false);
		ini_close();
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		case 4:
		if(maxRes >= 3840)
		{
			obj_resolution.res_width = 3840;
			obj_resolution.res_height = 2160;
			window_set_size(obj_resolution.res_width,obj_resolution.res_height);
				ini_open("savedata.ini");
		ini_write_real("Variables", "resWidth", obj_resolution.res_width);
		ini_write_real("Variables", "resHieght", obj_resolution.res_height);
		ini_close();
		}
			if (obj_resolution.res_width == maxRes)
		{
			window_set_fullscreen(true);
			ini_open("savedata.ini");
		ini_write_real("Variables", "fullScreen", true);
		ini_close();
		}
		else if(!(obj_resolution.res_width > maxRes))
		{
			window_set_fullscreen(false);
			ini_open("savedata.ini");
		ini_write_real("Variables", "fullScreen", false);
		ini_close();
		}	//surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
		obj_mainMenu.alarm[0] = 1;
		break;
		
		default:
		break;
	}
}


