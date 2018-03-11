	obj_input2.delay = false;
				if(sprite_exists(obj_input2.screenShot))
					{
						sprite_delete(obj_input2.screenShot);
					}
				instance_activate_all();
				obj_input2.paused = false;
				instance_deactivate_object(obj_menu);
