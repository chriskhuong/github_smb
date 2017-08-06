///Control the stats
if (hp <= 0)
    {
        with(obj_tempPlayer)
            {
                instance_destroy(); 
            }
		with(obj_tempGun)
            {
                instance_destroy();
            }
		with(obj_target)
            {
                instance_destroy();  
            }
        instance_create_depth(irandom_range(x-sprite_width/2, x+sprite_width/2), irandom_range(y-sprite_height/2, y+sprite_height/2), depth, obj_tempPlayer);
        p_lives -= 1;
        hp = maxHp;
    }
    
//stamina regen
if (stamina < maxStamina && alarm[0] == -1)
    {
        stamina++;
    }

//Pause the Game
if (obj_input.pause_key)
    {
        if (room != rm_pause)
            {
                if (instance_exists(obj_tempPlayer))
                    {
                        obj_tempPlayer.persistent = false;
                    }
				if (instance_exists(obj_tempGun))
                    {
                        obj_tempGun.persistent = false;
                    }
				if (instance_exists(obj_target))
                    {
                        obj_target.persistent = false;
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
        obj_input.pause_key = false;
    }

//Zoom View
var zoom_speed = .1;
view_zoom += obj_input.zoom_in * zoom_speed;
view_zoom -= obj_input.zoom_out * zoom_speed;

view_zoom = clamp(view_zoom, .1, view_maxZoom);

__view_set( e__VW.WView, 0, obj_resolutionManager.ideal_width/view_zoom );
__view_set( e__VW.HView, 0, obj_resolutionManager.ideal_height/view_zoom );

