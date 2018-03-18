/// @description Insert description here
// You can write your code in this editor
///Inherit obj_lifeFormParent events
event_inherited();
var vz = z + lengthdir_x(1, image_index / image_number * 360);
//scr_shadow (x, y, 6 / (1 + vz / 20));
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, (image_yscale * -.5), 0, (c_black), .5);
draw_sprite_ext(sprite_index,image_index,x , y-z, image_xscale, image_yscale,image_angle,image_blend,image_alpha);

