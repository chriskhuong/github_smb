///Get the input
scr_getInput(dvc);


//FOR TESTING ONLY
if (keyboard_check_pressed(vk_control))
    {
        with(obj_enemyParent)
            {
                instance_destroy();
            }
    }

/*
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
var viewW = camera_get_view_width(view_camera[0]);
var viewH = camera_get_view_height(view_camera[0]);
*/
if (room != New_Testing_Room)
	{
		if(pause_key)
			{
				paused = !paused;
			}
		
		if(paused)
			{
				//instance_deactivate_object(obj_silhouette);
				with(obj_tempPlayer2)
					{
						silo = false;
					}
				alarm[1] = 1;
			}
			else
			{
				delay = false;
				if(sprite_exists(screenShot))
					{
						sprite_delete(screenShot);
					}
				instance_activate_all();
			}
	}

