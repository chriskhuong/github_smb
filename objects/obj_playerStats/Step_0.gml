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

var zoom_speed = .1;


if(room != rm_characterSelect)
	{
		view_zoom = .75;
	}
	
