///Damage all lifeforms

if (other.id != creatorid && creator != noone)
    {
        other.hp -= damage;
        if (other.hp <= 0)
			{
				creatorid.ultCharge += 1;
			}
        //Apply the knockback
        if (instance_exists(creatorid)) //if the creator exists
            {
                var dir = point_direction(creatorid.x, creatorid.y, other.x, other.y);  //gets the direction from the creator's x, y position TO the other object's x, y position
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
            }
		*/
    }

///TEMP AUDIO
audio_emitter_pitch(audio_em, random_range(.5, 3.5));
audio_emitter_gain(audio_em, random_range(1, 3));
audio_play_sound_on(audio_em, snd_hit, false, 10);

