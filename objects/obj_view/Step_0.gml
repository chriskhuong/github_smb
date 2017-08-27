///Move %10 towards the player
var xTo, yTo;

if (instance_exists(obj_playerTracker))
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

//camera boundary locking
__view_set( e__VW.XView, 0, -(__view_get( e__VW.WView, 0 )/2) + x );
__view_set( e__VW.YView, 0, -(__view_get( e__VW.HView, 0 )/2) + y );
__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ), 0, room_width - __view_get( e__VW.WView, 0 ) ));
__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ), 0, room_height - __view_get( e__VW.HView, 0 ) ));

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

///////////////
/*
var i;
for (i = 0; i < instance_number(obj_tempPlayer1); i++)
	{
		players[i] = instance_find(obj_tempPlayer1, i);
	}