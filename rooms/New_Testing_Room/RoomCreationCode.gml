with(InputManager)
	{
		var xSpot = ((playerSlot) * ((view_w/2) / 2.5));
		var ySpot = (view_h/2);
		var pO = instance_create_depth(xSpot, ySpot, depth, obj_tempPlayer2);
		pO.state = scr_playerSelectState2;
		pO.creator = id;
		pO.playerNum = playerSlot;
		pO.char = playerSlot;
		pO.keyboard = false;
	}