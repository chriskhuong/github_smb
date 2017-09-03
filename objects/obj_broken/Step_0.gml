/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(z > 0)
{
	z +=zspeed;
	zspeed += zgravity;
}

if(z < 0)
{
	z = -z;
	if(zspeed<0)
	{
		zspeed = abs(zspeed) * 0.6 - 0.7;
	}
	if(zspeed < 1)
	{
		z = 0;
		zspeed = 0;
		alarm[0] = 60;
        alarm[1] = 30;
	}
}
