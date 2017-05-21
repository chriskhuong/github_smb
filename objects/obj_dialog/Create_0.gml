///Initialize the dialog object
text = noone; //this will eventuall be an array
text_visible = ""; //this is to help with the 'letter-by-letter' text addition
text_page = 0;
text_count = 0;
spd = .5; //tells how fast the text shows up
display_scale = display_get_gui_width()/__view_get( e__VW.WView, 0 );
width = sprite_width*display_scale;
margin = 8;

