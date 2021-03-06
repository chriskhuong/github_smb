if (other.id != creator)
    {
        other.hp -= 1;
        
        //Apply the knockback
        
        var dir = point_direction(0, 0, phy_speed_x, phy_speed_y); //gets the direction if the creator doesn't exist, just calculates from the object's current position
        var xforce = lengthdir_x(knockback, dir);
        var yforce = lengthdir_y(knockback, dir);
        with (other)
            {
                physics_apply_impulse(x, y, xforce, yforce);    //applies the impulse to the 'other' object
            }
    }

