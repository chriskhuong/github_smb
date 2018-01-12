///Zoom window
if(keyboard_check_pressed(vk_pageup) && zoom != maxZoom)
    {
        zoom++;
        
        window_set_size(ideal_width*zoom, ideal_height*zoom);
        surface_resize(application_surface, ideal_width*zoom, ideal_height*zoom);
        alarm[0] = 1;
    }
    
if(keyboard_check_pressed(vk_pagedown) && zoom != minZoom)
    {
        zoom--;
        
        window_set_size(ideal_width*zoom, ideal_height*zoom);
        surface_resize(application_surface, ideal_width*zoom, ideal_height*zoom);
        alarm[0] = 1;
    }

if(instance_exists(obj_view))
	{
		view_x = obj_view.x - view_w/2;
		view_y = obj_view.y - view_h/2;
	}

view_x = clamp(view_x, 0, room_width - view_w);
view_y = clamp(view_y, 0, room_height - view_h);