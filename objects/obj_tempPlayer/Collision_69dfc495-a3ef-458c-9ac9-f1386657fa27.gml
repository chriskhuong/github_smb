///Pick up active item
/*if(ds_list_find_index(obj_tempPlayer.active_items, obj_active_pickup_tree) or ds_list_find_index(obj_tempPlayer.active_items, obj_active_pickup_bush))
{
	//global.val = obj_active_pickup_bush;
	if(global.val != obj_active_pickup_shrub)
	{
		instance_create(obj_tempPlayer.x,obj_tempPlayer.y,global.val);
	}
}
*/

//instance_create(obj_tempPlayer.x,obj_tempPlayer.y,global.val);
//global.val = obj_active_pickup_bush;
/*
with (other)
    {
			scr_activeItemCheck();
			global.val = obj_active_pickup_tree;
			scr_itemsArray();
    }
*/
//Marion here
var tempSlot = noone;
var currentSlot = active_items[0]; // what do we need these for now?
if(active_items[0] == noone)
	{
		active_items[0] = obj_active_pickup_tree;
		with(other)
			{
				instance_destroy();
			}
	}
else //(active_items[0] != noone && active_items[0] != currentSlot)
	{
		//tempSlot = active_items[0];
		instance_create(x + 50, y + 50, active_items[0]);
		//active_items = noone;
		active_items[0] = obj_active_pickup_tree;
		with(other)
			{
				instance_destroy();
			}
	}