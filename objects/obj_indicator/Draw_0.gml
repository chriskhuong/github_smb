/// @description Insert description here
// You can write your code in this editor
dir = point_direction(x,y,creator.x,creator.y);
var xPos = x + lengthdir_x(20,dir);
var yPos = y + lengthdir_y(20,dir);
if(on)
draw_sprite_ext(spr_indicator_arrow,0,xPos,yPos,image_xscale,image_yscale,pointDir,-1,1);
draw_self();
