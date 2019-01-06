/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (state != sDead)
{
	dir = point_direction(other.x, other.y, x, y);
	stunX = x + lengthdir_x(16, dir);
	stunY = y + lengthdir_y(16, dir);
	state = sStun;
	hitStun = 15;
}