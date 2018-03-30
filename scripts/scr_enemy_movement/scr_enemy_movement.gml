///scr_enemy_movement()

if(point_distance(x, y, targetx, targety) > spd)
    {
        dir = point_direction(x, y, targetx, targety); //get a direction, then use the direction to move the enemy
        //var hspd = lengthdir_x(spd, dir); //x axis movement spd = length, dir is ^this stuff
        //var vspd = lengthdir_y(spd, dir); //same as above
        
        //this fixes the speed of any  movement
		hspd = x + lengthdir_x(spd, dir);
		vspd = y + lengthdir_y(spd, dir);
		collision_zoneX = !place_free(x + hspd, y);
		collision_zoneY = !place_free(x, y + vspd);
		
		//Collision check if free
		if (place_free(hspd, vspd))
			{
				//Move
				x = hspd;
				y = vspd;
			}
		else
			{
				var sweepInterval = 1;
				
				for (var angle = sweepInterval; angle <= 80; angle += sweepInterval)
					{
						for (var multiplier = -1; multiplier <= 1; multiplier += 2)
							{
								var angleToCheck = dir + angle * multiplier;
								hspd = x + lengthdir_x(spd, angleToCheck);
								vspd = y + lengthdir_y(spd, angleToCheck);
								if (place_free(hspd, vspd))
									{
										x = hspd;
										y = vspd;
										exit;
									}
							}
					}
			}
		
		image_xscale = sign(-hspd);
    }
	


/*
dir = point_direction(x, y, targetx, targety); //get a direction, then use the direction to move the enemy
hspd = x + lengthdir_x(spd, dir); //x axis movement spd = length, dir is ^this stuff
vspd = y + lengthdir_y(spd, dir); //same as above
collision_zoneX = !place_free(x + hspd, y);
collision_zoneY = !place_free(x, y + vspd);

if(vspd < 0)
	{
		sprite_index = up;
	}
else
	{
		sprite_index = side;
	}
	
image_xscale = sign(-hspd);

//Collision check if free
if (place_free(hspd, vspd))
	{
		//Move
		x = hspd;
		y = vspd;
	}
else
	{
		var sweepInterval = 1;
		
		for (var angle = sweepInterval; angle <= 80; angle += sweepInterval)
			{
				for (var multiplier = -1; multiplier <= 1; multiplier += 2)
					{
						var angleToCheck = dir + angle * multiplier;
						hspd = x + lengthdir_x(spd, angleToCheck);
						vspd = y + lengthdir_y(spd, angleToCheck);
						if (place_free(hspd, vspd))
							{
								x = hspd;
								y = vspd;
								exit;
							}
					}
			}
	}
*/