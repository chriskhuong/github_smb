/// @description Insert description here
// You can write your code in this editor
var bbox_side;

horiz = keyboard_check(vk_right) - keyboard_check(vk_left);
vert = keyboard_check(vk_down) - keyboard_check(vk_up);

if (horiz > 0)
	{
		bbox_side = bbox_right;
	}
else
	{
		bbox_side = bbox_left;
	}

if (tilemap_get_at_pixel(tilemap, bbox_side+horiz, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side+horiz, bbox_bottom) != 0)
{
	if (horiz > 0)
		{
			x = x - (x mod 32) + 31 - (bbox_right - x);
		}
	else
		{
			x = x - (x mod 32) - (bbox_left - x);
		}
	horiz = 0;
}

x += horiz * 4;

if (vert > 0)
	{
		bbox_side = bbox_bottom;
	}
else
	{
		bbox_side = bbox_top;
	}

if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+vert) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+vert) != 0)
{
	if (vert > 0)
		{
			y = y - (y mod 32) + 31 - (bbox_bottom - y);
		}
	else
		{
			y = y - (y mod 32) - (bbox_top - y);
		}
	vert = 0;
}

y += vert * 4;

//camera_set_view_pos(myCam,x-camera_get_view_width(myCam)/2,y-camera_get_view_height(myCam)/2);