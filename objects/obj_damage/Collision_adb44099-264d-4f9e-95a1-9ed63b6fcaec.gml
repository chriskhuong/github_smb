///Damage Player

if (other.tag != creator.tag)
    {
		target = other.id;
		target.myStats.hp -= damage;
		target.hit = true;
		with (other)
			{
				hitStun = 45;
				dir = -point_direction(x, y, other.creator.x, other.creator.y);
			}
        ////Apply the knockback
        //if (instance_exists(creator)) //if the creator exists
        //    {
        //        var dir = point_direction(creator.x, creator.y, target.x, target.y);  //gets the direction from the creator's x, y position TO the other object's x, y position
        //    }
        //else //if the creator doesn't exist
        //    {
        //        var dir = point_direction(x, y, target.x, target.y); //gets the direction if the creator doesn't exist, just calculates from the object's current position
        //    }
        //var xforce = lengthdir_x(knockback, dir);
        //var yforce = lengthdir_y(knockback, dir);
		
		//other.hspd = xforce;
		//other.vspd = yforce;
        /*with (other)
            {
                physics_apply_impulse(x, y, xforce, yforce);    //applies the impulse to the 'other' object
            */
    }


