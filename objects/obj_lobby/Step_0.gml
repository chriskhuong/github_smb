/// @description Check for controllers

gp_num = gamepad_get_device_count();

for (var i = 0; i < gp_num; i++;)
   {
		if (gamepad_is_connected(i))
			{
				if(i != ds_list_find_index(lobby_queue, i))
					{
						ds_list_add(lobby_queue, i);
						//show_debug_message("Device " + string(i) + " connected");
						
						//show_debug_message("My controller is " + string(i+1));
						var pO = instance_create_depth(0, 0, -5000, obj_input_test);
						pO.dvc = ds_list_find_index(lobby_queue, i);
						pO.keyboard = false;
				 		
						var p = instance_create_depth(64, ((i+1) * 64), -5000, obj_lobby_tester);
						
						p.dvc = i;
						p.spd = (i+1) * 1.5;
						p.image_index = i + 1;
						p.image_speed = 10;
					}
			
			}
			
   }