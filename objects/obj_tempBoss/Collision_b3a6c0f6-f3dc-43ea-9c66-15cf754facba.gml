///Damage the player

if (state != scr_enemy_stallState)  //make sure we don't damage the player in the stall state
    {
        //temp variable so we create the damage object in a good spot
        var dir  = point_direction(other.x, other.y, x, y) //gets a direction from the player object (other) to us
        
        //Using these as a offset so we don't create a damage object directly on top of the player
        var xdir = lengthdir_x (1, dir);
        var ydir = lengthdir_y (1, dir);
        
        //create a damage object
        var damage = instance_create(other.x + xdir, other.y + ydir, obj_damage);
        
        //tell the object who created it, so it doesn't injur it's creator
        damage.creator = id;
        damage.knockback = 50;
        state = scr_enemy_stallState;
        alarm[1] = room_speed;
        
    }

