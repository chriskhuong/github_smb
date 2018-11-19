
///Inherit obj_lifeFormParent events
event_inherited();
	
if (stunFlick > 0)
	{
		stunFlick--;
	}
else
	{
		stunFlash = !stunFlash
		stunFlick = maxStunFlick;
	}

if (hitStun <= 0)
	{
		stunFlash = false;
		hitStun = 0;
	}
else
	{
		hitStun--;
	}


//where it goes back and forth - chris
hspd = dir * movespeed; 

if (place_meeting(x + hspd, y, obj_tempCollision))
{
	while(!place_meeting(x + sign(hspd), y, obj_tempCollision))
	{
		x += sign(hspd); 
	}
	hspd = 0; 
	dir *= -1; 
}
x += hspd; 

