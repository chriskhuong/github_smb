/*
if (other.tag != creator)
    {
		bulletdmg = 1;
        other.hp -= bulletdmg;
        
        //Apply the knockback
        
        var dir = point_direction(0, 0, x, y); //gets the direction if the creator doesn't exist, just calculates from the object's current position
        var xforce = lengthdir_x(knockback, dir);
        var yforce = lengthdir_y(knockback, dir);
        /*with (other)
            {
                physics_apply_impulse(x, y, xforce, yforce);    //applies the impulse to the 'other' object
            }*
		audio_play_sound(snd_shot, 3, false);
		instance_destroy();
    }

*/