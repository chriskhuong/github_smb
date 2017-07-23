/// @description Insert description here
// You can write your code in this editor


//swaying motion

movement += value*60/room_speed; 
if movement >= pi*2
{
	//movement = 0; 
	x += lengthdir_x(sin(movement) * 2, image_angle); 
	y += lengthdir_y(sin(movement) * 2, image_angle); 
}

