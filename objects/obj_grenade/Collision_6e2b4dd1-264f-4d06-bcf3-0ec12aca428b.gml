///Collision
if (z <= (other.hh + 2))
	{
		spd *= -0.5;
		move_towards_point(x + xforce, y + yforce, spd);
		friction = 0.05;
	}