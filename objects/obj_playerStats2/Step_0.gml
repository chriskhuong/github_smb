///Control the stats
if (hp <= 0)
    {
       /* with(obj_tempPlayer1)
            {
                instance_destroy(); 
            }
		with(obj_tempGun1)
            {
                instance_destroy();
            }
		with(obj_target1)
            {
                instance_destroy();  
            }
        instance_create_depth(irandom_range(x-sprite_width/2, x+sprite_width/2), irandom_range(y-sprite_height/2, y+sprite_height/2), depth, obj_tempPlayer1);
        */
		/*
		dead = instance_create_depth(creator.x, creator.y, creator.depth, obj_deadBody);
		dead.Mycreator = creator;
		dead.image_xscale = creator.image_xscale;
		dead.sprite_index = creator.special[creator.character, DEAD];
		//dead.image_index = 0;
		dead.image_speed = creator.image_speed;
		dead.start_height = creator.start_height;
		dead.start_width = creator.start_width;
		dead.start_yoffset = creator.start_yoffset;
		*/
		p_lives -= 1;
        hp = maxHp;
		creator.state = scr_ghostState1;
    }
  
//stamina regen
if (stamina < maxStamina && alarm[0] == -1)
    {
        stamina += .1;
    }

//Pause the Game
/*
if (obj_input1.pause_key && room != New_Testing_Room)
    {
        if (room != rm_pause)
            {
                if (instance_exists(obj_tempPlayer1))
                    {
                        obj_tempPlayer1.persistent = false;
                    }
				if (instance_exists(obj_tempGun1))
                    {
                        obj_tempGun1.persistent = false;
                    }
				if (instance_exists(obj_target1))
                    {
                        obj_target1.persistent = false;
                    }
				
                previous_room = room;
                room_persistent = true;
                room_goto(rm_pause);
            }
        else
            {
                room_start_action = RETURN;
                room_goto(previous_room);
            }
        obj_input1.pause_key = false;
    }
*/

//show_debug_message(string(xCam) + " " + string(yCam));
//Zoom View
var zoom_speed = .1;
view_zoom += obj_input2.zoom_in * zoom_speed;
view_zoom -= obj_input2.zoom_out * zoom_speed;

if(room != New_Testing_Room)
	{
		view_zoom = .75;
	}
//clamp(view_zoom, .1, view_maxZoom);
/*
__view_set( e__VW.WView, 0, obj_resolutionManager.ideal_width/view_zoom );
__view_set( e__VW.HView, 0, obj_resolutionManager.ideal_height/view_zoom );
*/
