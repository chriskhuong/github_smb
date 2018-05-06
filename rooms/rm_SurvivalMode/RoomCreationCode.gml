
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
				}
			else
				{
					instance_destroy();
				}
	}
