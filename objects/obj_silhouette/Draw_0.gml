/// @description Insert description here
// You can write your code in this editor

gpu_set_blendenable(false);	//disables sprite transparencies
gpu_set_colorwriteenable(false, false, false, true); //disables color changing to r,g,b channels but enables changes to alpha

draw_set_alpha(0);

var x1 = x - sprite_xoffset;
var y1 = y - sprite_yoffset;
var x2 = x + sprite_width;
var y2 = y + sprite_height;

draw_rectangle(x1, y1, x2, y2, false);
draw_set_alpha(1);

gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendenable(true);