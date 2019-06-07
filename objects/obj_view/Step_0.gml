///Move %10 towards the player
var xTo, yTo;

if (follow && instance_exists(obj_playerTracker))
    {
        move_towards_point(obj_playerTracker.x, obj_playerTracker.y, 0)
        xTo = obj_playerTracker.x;
        yTo = obj_playerTracker.y;
    }
else
    {
        move_towards_point(x, y, 0)
        xTo = x;
        yTo = y;
    }

x += (xTo - x)/25;
y += (yTo - y)/25;


if (shake != 0)
{
    x += random_range(-shake, shake);
    y += random_range(-shake, shake);
    shake *= 0.8;
}
    
if (shake < 0)
    {
        shake = 0;
    }


global.view_x = obj_view.x - global.view_w/2;
global.view_y = obj_view.y - global.view_h/2;

global.view_x = clamp(global.view_x, 0, room_width - global.view_w);
global.view_y = clamp(global.view_y, 0, room_height - global.view_h);