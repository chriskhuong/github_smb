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
		
		dead = instance_create_depth(creator.x, creator.y, creator.depth, obj_deadBody);
		//dead.Mycreator = creator;
		dead.image_xscale = image_xscale;
		dead.sprite_index = creator.sprite_index;
		dead.image_index = creator.image_index;
		p_lives -= 1;
        hp = maxHp;
		creator.state = scr_ghostState;
    }
    
//stamina regen
if (stamina < maxStamina && alarm[0] == -1)
    {
        stamina++;
    }

//Pause the Game
if (obj_input1.pause_key)
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

//Zoom View
var zoom_speed = .1;
view_zoom += obj_input1.zoom_in * zoom_speed;
view_zoom -= obj_input1.zoom_out * zoom_speed;

view_zoom = clamp(view_zoom, .1, view_maxZoom);

__view_set( e__VW.WView, 0, obj_resolutionManager.ideal_width/view_zoom );
__view_set( e__VW.HView, 0, obj_resolutionManager.ideal_height/view_zoom );

