///Pick up active item

//while(ds_list_size(obj_tempPlayer.active)
/*if(ds_list_find_index(obj_tempPlayer.active_items, obj_active_pickup_bush) or ds_list_find_index(obj_tempPlayer.active_items, obj_active_pickup_shrub) == 0)
{
	//global.val = obj_active_pickup_tree;
	if(global.val != obj_active_pickup_tree)
	{
		instance_create(obj_tempPlayer.x,obj_tempPlayer.y,global.val);
	}
}*/

// This is where you put the item that you want to be availible it will find the item in the list if it is
// at position 0 and return its vaule.
/*
with (other)
{	
	scr_activeItemCheck();	
	global.val = obj_active_pickup_bush; 
	scr_itemsArray();			
}*/

//Marion here
var tempSlot = noone;
var currentSlot = active_items[0];
if(active_items[0] == noone)
	{
		active_items[0] = obj_active_pickup_bush;
		with(other)
			{
				instance_destroy();
			}
	}
else //(active_items[0] != noone) //&& active_items[0] != currentSlot)
	{
		//tempSlot = active_items[0];
		instance_create(x + 50, y + 50, active_items[0]);
		//active_items = noone;
		active_items[0] = obj_active_pickup_bush;
		with(other)
			{
				instance_destroy();
			}
	}