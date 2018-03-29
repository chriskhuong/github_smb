///Control the stats
if (hp <= 0)
    {
		p_lives -= 1;
        hp = maxHp;
		creator.state = sGhost;
		//creator.state = scr_ghostState;
    }
  
//stamina regen
if (stamina < maxStamina && alarm[0] == -1)
    {
        stamina += .1;
    }


//show_debug_message(string(xCam) + " " + string(yCam));
//Zoom View
var zoom_speed = .1;
//view_zoom += obj_input2.zoom_in * zoom_speed;
//view_zoom -= obj_input2.zoom_out * zoom_speed;

if(room != New_Testing_Room)
	{
		view_zoom = .75;
	}
	
//clamp(view_zoom, .1, view_maxZoom);
/*
__view_set( e__VW.WView, 0, obj_resolutionManager.ideal_width/view_zoom );
__view_set( e__VW.HView, 0, obj_resolutionManager.ideal_height/view_zoom );
*/
