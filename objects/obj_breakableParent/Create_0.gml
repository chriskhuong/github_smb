///Inherit obj_lifeFormParent events
//event_inherited();
/// @description Insert description here
// You can write your code in this editor
event_inherited();
tag = "breakable";
image_speed = 0;
hh = sprite_get_bbox_bottom(sprite_index) - sprite_get_bbox_top(sprite_index);

hitStun = 0;
stunFlick = 6;
maxStunFlick = stunFlick;
stunFlash = false;