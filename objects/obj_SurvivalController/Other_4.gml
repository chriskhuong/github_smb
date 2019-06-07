if (room == rm_characterSelect)
	{
		
		with(InputManager)
			{
				var xSpot = ((playerSlot) * ((global.view_w/2) / 2.5));
				var ySpot = (global.view_h/2);
				pO = instance_create_depth(xSpot, ySpot, depth, obj_Player);
				//pO.state = scr_playerSelectState;
				pO.creator = id;
				pO.playerNum = playerSlot;
				pO.char = playerSlot;
				pO.keyboard = false;
			}
	}
	
else
	{
		
		with(obj_Player)
			{
				if (!confirmed)
					{
						instance_destroy();
					}
			}

		for (i = 0; i < instance_number(obj_Player); i++)
			{
				ds_list_add(players, obj_Player);
				
				var thisPlayer = players[| i];

				with(thisPlayer)
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
			}
		
		count = ds_list_size(players);
		
		show_debug_message(string(count));
	}
