var xx = argument0;
var yy = argument1;
var layer_id = layer_tilemap_get_id(layer_get_id(argument2));

//Save current position
var xp = x;
var yp = y;

//Update position
x = xx;
y = yy;

//Check for collision
var meeting =	tilemap_get_at_pixel(layer_id, bbox_left, bbox_top) ||
				tilemap_get_at_pixel(layer_id, bbox_right, bbox_top) ||
				tilemap_get_at_pixel(layer_id, bbox_left, y) ||
				tilemap_get_at_pixel(layer_id, bbox_right, y) ||
				tilemap_get_at_pixel(layer_id, bbox_left, bbox_bottom) ||
				tilemap_get_at_pixel(layer_id, bbox_right, bbox_bottom) ||
				tilemap_get_at_pixel(layer_id, x, y);

//Move back
x = xp;
y = yp;

//Return
return meeting;