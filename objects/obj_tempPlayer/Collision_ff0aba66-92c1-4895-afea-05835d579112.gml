
	if(active_items[0] != noone)
	{
		var item = instance_create(x,y,active_items[0]);
		item.phy_active = false; 
	}	
		active_items[0] = other.this;
		show_debug_message(other.message);
		with (other)
		{	
			//show_debug_message(message);
			instance_destroy();		
		}



