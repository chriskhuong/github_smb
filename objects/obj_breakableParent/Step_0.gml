
///Inherit obj_lifeFormParent events
event_inherited();
	
if (stunFlick > 0)
	{
		stunFlick--;
	}
else
	{
		stunFlash = !stunFlash
		stunFlick = maxStunFlick;
	}

if (hitStun <= 0)
	{
		stunFlash = false;
		hitStun = 0;
	}
else
	{
		hitStun--;
	}

if (hp <= 0)
    {
        instance_destroy();
    }