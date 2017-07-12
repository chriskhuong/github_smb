/// @description Insert description here
// You can write your code in this editor

height -= 1; 
if(height <= 0)
{
	instance_destroy(); 
	instance_create(x, y, obj_Splash)
}