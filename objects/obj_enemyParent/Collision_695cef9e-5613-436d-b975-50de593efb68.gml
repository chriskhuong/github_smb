/// @description Insert description here
// You can write your code in this editor
if (instance_exists(other) && other.state != sStun)
	{
		if (other.alive == true && other.invisible == false && other.hit == false)
			{	
				other.hit = true;
				other.hp -= 1;
				other.hitStun = 15
				other.dir = point_direction(x, y-10, other.x, other.y+20);
			}
	}