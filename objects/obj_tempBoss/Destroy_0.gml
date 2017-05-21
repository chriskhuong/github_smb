///Drop loot

//instance_create(x, y, obj_expr);

if (scr_chance(1))
    {
        instance_create(x + random_range(-10, 10), y + random_range(-10, 10), obj_expr);
    }

var inst;

with(instance_nearest(608, 288, obj_tempWall))
    {
        instance_destroy();
        
    }

inst = instance_create(608, 288, obj_door);
        with (inst)
            {
                new_room = rm_temp;
                new_x = 64;
                new_y = 704;
            }







action_end_sound(snd_Epic_Battle);
