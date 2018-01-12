///Display Properties
ideal_width = 0;
ideal_height = 512; //256;	//135 //might change this later
zoom = 2;
minZoom = 1;
maxZoom = 1;

display_width = display_get_width();
display_height = display_get_height();

aspect_ratio = display_width/display_height;
ideal_width = round(ideal_height * aspect_ratio);

//Calculate Max Zoom
maxZoom = floor(display_width/ideal_width);


//Check for odd numbers
if(ideal_width & 1)
    {
        ideal_width++;
    }

if(ideal_height & 1)
	{
		ideal_height++;
	}

window_set_size(ideal_width * zoom, ideal_height * zoom);
display_set_gui_size(ideal_width, ideal_height);
surface_resize(application_surface, ideal_width, ideal_height);

alarm[0] = 1;

camera = camera_create();

globalvar view_x, view_y, view_w, view_h;	//GLOBAL.VAR if the globalvar keyword ever gets removed
view_x = 0;
view_y = 0;
view_w = ideal_width;
view_h = ideal_height;

room_goto_next();

