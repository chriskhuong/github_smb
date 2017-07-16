///Drop loot

//instance_create(x, y, obj_expr);

if (scr_chance(.35))
    {
		instance_create(x + random_range(-4, 4), y + random_range(-4, 4), obj_active_pickup_bush);
    }
	
if (scr_chance(.50))
    {
		instance_create(x + random_range(-4, 4), y + random_range(-4, 4), obj_active_pickup_shrub);
    }
	
if (scr_chance(.75))
    {
		instance_create(x + random_range(-4, 4), y + random_range(-4, 4), obj_active_pickup_tree);
    }

