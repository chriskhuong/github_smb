///Inherit obj_lifeFormParent events

event_inherited();

if (place_meeting(phy_position_x, phy_position_y, obj_teatime))
    {
        spd = tempSpd;
    }
else
    {
        spd = origSpd;
    }


