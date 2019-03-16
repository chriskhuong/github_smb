/// @description Insert description here
// You can write your code in this editor

t = (t + increment) mod 360;
shift = amplitude * dsin(t)
xx += hspeed;
x = xx + shift;
y -= 1;
image_alpha -= .01;

if (image_alpha < 0)
	{
		instance_destroy();
	}