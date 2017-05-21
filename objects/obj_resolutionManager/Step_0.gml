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

