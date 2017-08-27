///Inherit obj_lifeFormParent events

event_inherited();

if (place_meeting(x, y, obj_teatime))
    {
        spd = tempSpd;
    }
else
    {
        spd = origSpd;
    }


