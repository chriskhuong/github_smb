with(InputManager)
	{
		var xSpot = ((playerSlot) * ((global.view_w/2) / 2.5));
		var ySpot = (global.view_h/2);
		pO = instance_create_depth(xSpot, ySpot, depth, obj_Player);
		//pO.state = scr_playerSelectState;
		pO.creator = id;
		pO.playerNum = playerSlot;
		pO.char = playerSlot;
		pO.keyboard = false;
	}
