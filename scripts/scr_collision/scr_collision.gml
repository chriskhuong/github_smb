//Collision check if free

var hspd = argument0;
var vspd = argument1;
var tileLayer = argument2;

if (place_free(hspd, vspd) && !scr_tile_place_meeting(hspd, vspd, tileLayer))
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
						hspd = x + lengthdir_x(len, angleToCheck);
						vspd = y + lengthdir_y(len, angleToCheck);
						if (place_free(hspd, vspd) && !scr_tile_place_meeting(hspd, vspd, tileLayer))
							{
								x = hspd;
								y = vspd;
								exit;
							}
					}
			}
	}