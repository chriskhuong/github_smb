scr_activeItemCheck();
active_items[0] = obj_active_pickup_shrub;
with (other)
    {
			instance_destroy();
    }

/*
//Marion here
var tempSlot = noone;
var currentSlot = active_items[0];
if(active_items[0] == noone)
	{
		active_items[0] = obj_active_pickup_shrub;
		with(other)
			{
				instance_destroy();
			}
	}
else// (active_items[0] != noone && active_items[0] != currentSlot)
	{
		//tempSlot = active_items[0];
		instance_create(x + 50, y + 50, active_items[0]);
		//active_items = noone;
		active_items[0] = obj_active_pickup_shrub;
		with(other)
			{
				instance_destroy();
			}
	}*/