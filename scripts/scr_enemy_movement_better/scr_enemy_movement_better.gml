///scr_enemy_movement()
var dir = point_direction(0, 0, xaxis, yaxis); //get a direction, then use the direction to move the enemy
var hspd = lengthdir_x(spd, dir); //x axis movement spd = length, dir is ^this stuff
var vspd = lengthdir_y(spd, dir); //same as above
        
/////////might change the below line once we incorporate actual enemy sprites
//if (hspd != 0)
//{image_xscale = sign(hspd); //returns a 1 or a -1 depending on which way it's facing horizontally}

if(vspd < 0)
			{
				sprite_index = up;
			}
		else
			{
				sprite_index = side;
			}
			
image_xscale = sign(-hspd);

x += hspd;
y += vspd;
