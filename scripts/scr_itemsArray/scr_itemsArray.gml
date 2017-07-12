
//ds_list_add(obj_tempPlayer.active_items,global.val);
obj_tempPlayer.active_items[0] = global.val;
if(global.active_slot <= 0)
{
	global.active_slot += 1;
}
//instance_create(obj_tempPlayer.x,obj_tempPlayer.y,global.val);
show_debug_message("You picked up a item!");
show_debug_message(obj_tempPlayer.active_items);
instance_destroy();