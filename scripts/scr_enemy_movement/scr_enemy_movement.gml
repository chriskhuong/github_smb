///scr_enemy_movement()
if(point_distance(x, y, targetx, targety) > spd)
    {
        var dir = point_direction(x, y, targetx, targety); //get a direction, then use the direction to move the enemy
        var hspd = lengthdir_x(spd, dir); //x axis movement spd = length, dir is ^this stuff
        var vspd = lengthdir_y(spd, dir); //same as above
        
        /////////might change the below line once we incorporate actual enemy sprites
        //if (hspd != 0)
        //{image_xscale = sign(hspd); //returns a 1 or a -1 depending on which way it's facing horizontally}
        
        phy_position_x += hspd;
        phy_position_y += vspd;
    }
