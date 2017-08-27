///Damage Player

if (other.tag != creator.tag)
    {
        obj_playerStats1.hp -= damage;
        
        //Apply the knockback
        if (instance_exists(creator)) //if the creator exists
            {
                var dir = point_direction(creator.x, creator.y, other.x, other.y);  //gets the direction from the creator's x, y position TO the other object's x, y position
            }
        else //if the creator doesn't exist
            {
                var dir = point_direction(x, y, other.x, other.y); //gets the direction if the creator doesn't exist, just calculates from the object's current position
            }
        var xforce = lengthdir_x(knockback, dir);
        var yforce = lengthdir_y(knockback, dir);
        /*with (other)
            {
                physics_apply_impulse(x, y, xforce, yforce);    //applies the impulse to the 'other' object
            */
    }

