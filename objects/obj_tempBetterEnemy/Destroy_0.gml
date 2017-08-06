///Drop loot

//instance_create(x, y, obj_expr);

if (scr_chance(.35))
    {
        instance_create_depth(x + random_range(-4, 4), y + random_range(-4, 4), depth, obj_expr);
    }


