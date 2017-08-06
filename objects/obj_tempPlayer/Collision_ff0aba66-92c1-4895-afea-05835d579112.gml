
	if(passive_items[0] != noone)
	{
		var item = instance_create(x,y,passive_items[0]);
		item.phy_active = false; 
	}	
		passive_items[0] = other.this;
		
	switch(passive_items[0])
	{
		case obj_passive_heelsOfAgility:
		spd = spd_buff;
		obj_playerStats.maxStamina = 10;
		obj_playerStats.stamina = obj_playerStats.maxStamina;
		dmg = dmg;
		break;
		
		case obj_passive_heelsOfEndurance:
		obj_playerStats.maxStamina += 1;
		spd = spd;
		dmg = dmg;
		break;
		
		case obj_passive_heelsOfStrength:
		dmg += 1;
		spd = 1.5;
		obj_playerStats.maxStamina = 10;
		obj_playerStats.stamina = obj_playerStats.maxStamina;
		break;
		
		case obj_passive_heelsOfSharpness:
		
		spd = 1.5;
		obj_playerStats.maxStamina = 10;
		obj_playerStats.stamina = obj_playerStats.maxStamina;
		obj_playerStats.attack = 1;
		
		default: 
		break;
	}
	
		show_debug_message(other.message);
		with (other)
		{	
			//show_debug_message(message);
			instance_destroy();		
		}



