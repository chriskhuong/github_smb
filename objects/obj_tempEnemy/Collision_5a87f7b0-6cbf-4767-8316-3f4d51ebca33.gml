///Damage the player

if (state != scr_enemy_stallState)  //make sure we don't damage the player in the stall state
    {
		if (other.alive == true && other.hit == false)
			{	
				other.myStats.hp -= 1;
				other.hit = true;
				other.hitStun = 15
				//other.dir = -point_direction(x, y, other.x, other.y)
				
				//damage.knockback = 50;
				state = scr_enemy_stallState;
				alarm[1] = room_speed;
			}
	}

other.dir = -dir;