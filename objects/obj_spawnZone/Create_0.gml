///Random Character Spawn
//to do: Check if place is free first
//to do: Have spawn zone follow camera
if (instance_number(obj_tempPlayer) < 4)
    {
        instance_create(irandom_range(x-sprite_width/2, x+sprite_width/2), irandom_range(y-sprite_height/2, y+sprite_height/2),obj_tempPlayer);
    }
