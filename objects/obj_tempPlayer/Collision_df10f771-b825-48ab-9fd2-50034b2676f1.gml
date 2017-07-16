///Pick up active item
/*if(ds_list_find_index(obj_tempPlayer.active_items, obj_active_pickup_tree) or ds_list_find_index(obj_tempPlayer.active_items, obj_active_pickup_shrub) == 0)
{
	//global.val = obj_active_pickup_bush;
	if(global.val != obj_active_pickup_bush)
	{
		instance_create(obj_tempPlayer.x,obj_tempPlayer.y,global.val);
	}
}*/
/*
tree = ds_list_find_index(obj_tempPlayer.active_items, obj_active_pickup_tree) == 0;
bush = ds_list_find_index(obj_tempPlayer.active_items, obj_active_pickup_bush) == 0;
shrub = ds_list_find_index(obj_tempPlayer.active_items, obj_active_pickup_shrub) == 0;

switch(tree or shrub or bush)
{
	case 1:
		instance_create(obj_tempPlayer.x,obj_tempPlayer.y,global.val);
		break;
	case 2:
		instance_create(obj_tempPlayer.x,obj_tempPlayer.y,global.val);
		break;
	case 3:
		instance_create(obj_tempPlayer.x,obj_tempPlayer.y,global.val);
	default:
		break;
}
*/

//instance_create(obj_tempPlayer.x,obj_tempPlayer.y,global.val);
//global.val = obj_active_pickup_bush;
/*
with (other)
    {
			scr_activeItemCheck();
			global.val = obj_active_pickup_shrub;
			scr_itemsArray();
    }
*/
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
	}