/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_gray); 
draw_set_alpha(0.6); 

var length; 
var vectorx, vectory; //special math variables

vectorx = (x-(view_xview+view_wview/2))/(view_wview/2); 
vectory = (y-(view_yview+view_hview/2))/(view_hview/2); 

length = 2; 
draw_line_width(x+vectorx*sqr(height),y+vectory*sqr(height), 
				x+vectorx*sqr(height+length),y+vectory*sqr(height+length),2); 

draw_set_alpha(1); 