/// @description Check for controllers

gp_num = gamepad_get_device_count();
playPlace = max_controller_lobby;

for (var i = 0; i < gp_num && i < max_controller_lobby; i++)
   {
		if (gamepad_is_connected(i))
			{
				
				if(i != ds_list_find_index(lobby_queue, i))
					{
						ds_list_add(lobby_queue, i);
						//show_debug_message("Device " + string(i) + " connected");
						xCam = camera_get_view_width(view_camera[0])
						yCam = camera_get_view_height(view_camera[0])
						//show_debug_message("My controller is " + string(i+1));
						var xSpot = ((i + 1) * ((xCam/2) / 2.5));
						var ySpot = (yCam/2);
						var pO = instance_create_depth(xSpot, ySpot, depth, obj_input2);
						pO.dvc = ds_list_find_index(lobby_queue, i);
						pO.char = i + 1;
						pO.keyboard = false;
						
						/*
						var p = instance_create_depth(64, ((i+1) * 64), depth, obj_lobby_tester);
						
						p.dvc = i;
						p.spd = 4;
						p.image_index = i + 1;
						p.image_speed = 10;
						*/
					}
					
			}
			
			
   }

if (instance_number(obj_counter) == ds_list_size(lobby_queue) && instance_number(obj_counter) > 0)
	{
		ready = true;
	}
else
	{
		ready = false;
	}