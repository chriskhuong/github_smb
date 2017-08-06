/// @gen particles
// You can write your code in this editor
//effect_create_below(ef_ellipse, x, y, choose(0, 1, 2), 
//make_colour_hsv(irandom(255), 255, 255);

/*
effect_create_below(ef_ellipse, x, y, choose(0, 1, 2), 1); 
make_colour_hsv(185, 63, 150); 
*/



//effect_create_below(ef_ellipse, x, y, 1), make_colour_hsv(irandom(255), 255, 255);


//how far from edge/outside view
edge = 200; 

//drops every step
repeat(40)
	{
		instance_create_depth(view_xview - edge + random(view_wview + edge*2), 
		view_yview - edge + random(view_hview + edge*2), depth, obj_Rain); 
	}