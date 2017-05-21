///Display Properties
ideal_width = 0;
ideal_height = 256; //might change this later
zoom = 3;
minZoom = 1;
maxZoom = 1;

aspect_ratio = display_get_width()/display_get_height();

ideal_width = round(ideal_height * aspect_ratio);

//Calculate Max Zoom
maxZoom = floor(display_get_width()/ideal_width);

//Check for odd numbers
if(ideal_width & 1)
    {
        ideal_width++;
    }

for(var i = 1; i <= room_last; i++)
    {
        if(room_exists(i))
            {
                room_set_view(i, 0, true, 0, 0, ideal_width, ideal_height, 0, 0, ideal_width, ideal_height, 320, 180, room_speed, room_speed, obj_view);
                room_set_view_enabled(i, true);
            }
    }

surface_resize(application_surface, ideal_width, ideal_height);
display_set_gui_size(ideal_width, ideal_height);
window_set_size(ideal_width * zoom, ideal_height * zoom);
alarm[0] = 1;
room_goto(room_next(room));

