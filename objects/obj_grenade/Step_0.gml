///STEP

if (z > 1)
    {
        z += zspeed;
        zspeed += zgrav;
    }

if(z < 1)
    {
        z = -z;
        zspeed = abs(zspeed) * 0.6 - 0.7;
        if (zspeed < 1)
            {
                z = 0;
                zspeed = 0;
            }
    }
/*
if (!place_free(x + xForce, y + yForce))
	{
		spd *= -1;
	}
*/
scr_get_depth();

