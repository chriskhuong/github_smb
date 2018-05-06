///Control the stats
if (hp <= 0)
    {
		creator.state = sGhost;
		//creator.state = scr_ghostState;
    }
  
//stamina regen
if (stamina < maxStamina && alarm[0] == -1)
    {
        stamina += .1;
    }
/*if (obj_lobby.ready  && creator.creator.pause_key)
	{
		//******NOTE********
		//modify with a global or something to determine which game mode we're playing
		audio_stop_sound(snd_Epic_Battle);
		obj_Player.state = sMove;
		room_goto(rm_SurvivalMode);
	}
*/
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
