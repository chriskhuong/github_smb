/// @description Insert description here
// You can write your code in this editor
if(active_items[0] != noone)
	{
		var item = instance_create(x,y,active_items[0]);
		item.phy_active = false; 
	}	
		active_items[0] = other.this;
		
switch (active_items[0])
{
    case obj_active_parent: 
	script_execute(scr_smokeGrenade());
	break;
    default: 
	break;
}
 