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

with (other)
    {
			scr_activeItemCheck();
			global.val = obj_active_pickup_tree;
			scr_itemsArray();
    }

	
