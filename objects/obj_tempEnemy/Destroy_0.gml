///Drop loot

//instance_create(x, y, obj_expr);

if (scr_chance(.35))
    {
		instance_create(x + random_range(-4, 4), y + random_range(-4, 4), obj_passive_heelsOfAgility);
    }
	
if (scr_chance(.50))
    {
		instance_create(x + random_range(-4, 4), y + random_range(-4, 4), obj_passive_heelsOfEndurance);
    }
	
if (scr_chance(.75))
    {
		instance_create_depth(x + random_range(-4, 4), y + random_range(-4, 4),depth, obj_passive_heelsOfStrength);
    }

if (scr_chance(.20))
    {
		instance_create_depth(x + random_range(-4, 4), y + random_range(-4, 4),depth, obj_passive_heelsOfSharpness);
    }
	
if (scr_chance(.10))
    {
		instance_create_depth(x + random_range(-4, 4), y + random_range(-4, 4),depth, obj_passive_heelsOfGold);
    }