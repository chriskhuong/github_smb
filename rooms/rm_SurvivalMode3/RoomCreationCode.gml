with(obj_Player)
	{
			if(confirmed)
				{
					state = sMove;
					if(instance_exists(obj_spawnZone))
						{
							x = irandom_range(obj_spawnZone.x - obj_spawnZone.sprite_width/2, obj_spawnZone.x + obj_spawnZone.sprite_width/2);
							y = irandom_range(obj_spawnZone.y - obj_spawnZone.sprite_height/2, obj_spawnZone.y + obj_spawnZone.sprite_height/2);
						}
						
					myArrow = instance_create_depth(x, y, -5000, obj_indicator);
					myArrow.creator = id;
					myArrow.image_speed = 0;
				 	myArrow.sprite_index = spr_characterLocator;
					myArrow.image_index = special[character, FACE];
				}
			else
				{
					instance_destroy();
				}
	}
