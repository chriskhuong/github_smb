/// @desc Hover + click
if (collision_point(mouse_x,mouse_y,object_index,false,false) != noone)
{
	image_angle = sin(get_timer()*0.00001)*1.5;	
	//image_xscale = 1.1;
	if (mouse_check_button_released(mb_left)) url_open("https://www.patreon.com/shaunjs");
} 
	else 
{
	image_angle *= 0.9;
	image_xscale = max(image_xscale*0.99,1);
}
image_yscale = image_xscale;