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



scr_get_depth();

